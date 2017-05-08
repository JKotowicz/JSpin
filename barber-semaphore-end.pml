#define NCHAIRS 2	/* Number of waiting chairs */
#define	NCUSTS	3	/* Number of customers */
#define NBARBS  1	/* Number of barbers */

#define NOBODY	255	/* Indicates nobody sitting in a waiting chair */

/* SHARED STATE (GLOBALS) */

byte haircut = NOBODY ;			/* customer # currently getting haircut */
byte chair[NCHAIRS] = NOBODY ;	/* waiting chairs maintained as a circular buffer */
byte first = 0 ;				/* first waiting customer's chair */
byte next = 0 ;					/* chair for the next customer */

byte nwaiting = 0 ;				/* how many customers are waiting? */
byte nserving = 0 ;				/* how many customers getting served? */

/* SEMAPHORE FUNCTIONS */

#define sema byte
inline up(s) { s++ ; }
inline down(s) { atomic{ s > 0 ; s-- } }

/* SEMAPHORE DEFINITIONS */

sema mutex = 1 ;		/* must be obtained by customer/barber prior to state changes */
sema in_chair = 0 ;		/* blocking sem to signal barber customer is in the chair */
sema cust_wait[NCUSTS] = 0 ;	/* blocking sem to signal waiting customer */


/* Customer Process 
*	(1) Enter the barber shop
*	(2) If no one in barber chair, grab it and wake the barber
*	(3) Otherwise, sit in waiting chair, wait to be called by barber
*/

proctype Customer(byte me) {

	do
	::
		printf("C%d enters the Babrber Shop\n", me) ;
		down(mutex);
		if 
		:: haircut == NOBODY ->
			printf("C%d does not have to wait\n", me);

		:: else ->
			chair[next] = me;		/* put myself in next waiting chair */
			printf("C%d sits in waiting chair %d\n", me, next);
			next = (next+1) % NCHAIRS;
			nwaiting++;
			up(mutex);    			// give up shop lock (mutex)
			down(cust_wait[me]);   // customer blocked waiting for barber's signal
		fi;

		haircut = me;				// put myself in the barber chair
		printf("C%d sits in the barber chair\n", me);
		nserving++;
		up(in_chair);				// signal barber to wake up and start cutting
		up(mutex);					// release shop lock
		down(cust_wait[me]);		// block until haircut complete
		printf("C%d leaves with a sweet haircut\n", me) ;
	od ;
}

/* Barber Process
*	(1) Wait for someone to sit in the barber chair, cut their hair
*	(2) If there is no customer waiting, go to sleep, go to step (1)
*	(3) If there is a customer waiting, have them proceed to barber chair, go to step (1)
*/

proctype Barber() {
	byte cust = NOBODY ;	/* local variable for identifying customer */

	do
	::
	    down(in_chair);    // barber blocks (sleeps) until someone in chair 
		cust = haircut;
		printf("Barber cuts C%d's hair\n", cust) ;
		down(mutex);		// grab shop lock, making a decision 
		up(cust_wait[cust]);	// tell customer he can go
		nserving--;

		if
		:: nwaiting == 0 ->				/* no-one is waiting, so haircut is for NOBODY */
			haircut = NOBODY;
			printf("Barber sleeps\n") ;
			up(mutex);
		:: else ->					    /* someone is waiting */
			cust = chair[first];
			chair[first] = NOBODY;
			first = (first+1) % NCHAIRS;
			nwaiting--;
			up(cust_wait[cust]);		// signal that cust to come to chair 

			printf("Barber gets C%d from the waiting chair %d\n", cust, first);
	
		fi ;
	od ;
}


init {
	byte c ;

	atomic {				/* Get the customers running first before starting barber */
		for( c : 0 .. 2 ){
			run Customer(c)
		}
		run Barber() ;
	}
}



















