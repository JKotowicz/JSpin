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

proctype Customer( byte me) {

	do
	::
		printf("C%d enters the Babrber Shop\n", me) ;
		down(mutex) ;		/* Customer has "control" of the shop until he decides what to do */
		if
		:: haircut == NOBODY ->
			printf("C%d does not have to wait\n", me) ;
			skip ;					/* Go directly to barber chair */
		:: else ->
			chair[next] = me ;
			printf("C%d sits in waiting chair %d\n", me, next) ;

			next = (next + 1) % NCHAIRS ;  /* circular buffer math for next customer */
			nwaiting++ ;
			up(mutex) ;				/* release control of mutex after sitting in waiting chair */
			down(cust_wait[me]) ;	/* wait for barber to call me */
		fi ;
		
		haircut = me ;				/* Made it to the barber chair! */
		nserving++ ;				/* Barber either called me, or there was no waiting */
		printf("C%d sits in barber chair\n", me) ;
		up(in_chair);				/* Get in chair */
		up(mutex) ;					/* release control of mutex if got here without waiting */
		down(cust_wait[me]) ;		/* wait for barber to cut my hair */

		printf("C%d leaves with a sweet haircut\n", me) ;
	od ;
}

proctype Barber() {
	byte cust = NOBODY ;	

	do
	::
		down(in_chair) ;	/* signal barber when customer sits in barber chair */
		cust = haircut ;	/* haircut set in customer process */

		printf("Barber cuts C%d's hair\n", cust) ;

		down(mutex) ;		   /* get control of shop for a state change */
		up(cust_wait[cust]);   /* cutting customer hair */

		nserving-- ;		   /* done cutting this customer */

		if
		:: nwaiting == 0 ->				/* no-one is waiting, so haircut is for NOBODY */
			haircut = NOBODY ;
			printf("Barber sleeps\n") ;
			up(mutex) ;					/* release control of shop mutex */

		:: else ->					    /* someone is waiting */
			cust = chair[first] ;		/* choose the customer in the first waiting chair */
			chair[first] = NOBODY ;		/* mark same waiting chair as empty */
			first = (first + 1) % NCHAIRS ;  /* move first to next customer to be selected */
			nwaiting-- ;
			up(cust_wait[cust]) ;		/* signal waiting customer to proceed to barber chair */
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

/*
 * We never have more customers in the waiting
 * area than chairs (given NCUSTS <= NCHAIRS+1).
 */
ltl S_NoOvercrowding {
	[] (nwaiting <= NCHAIRS)
}

/*
 * At most one customer is being served at a time.
 */
ltl S_AtMostOneHaircut {
	[] (nserving <= 1)
}

/*
 * Liveness - the barber always gives someone a
 * haircut eventually - if not we'd have deadlock.
 */
ltl L_EventuallyServeSomebody {
	[]<>(haircut != NOBODY)
}

/*
 * If folks are waiting then eventually someone gets a haircut
 */
ltl L_WaitingMeansService {
	[]((nwaiting > 0) -> <>(haircut != NOBODY))
}















