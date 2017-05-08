/*
 * Number of processes, including init.
 */
#define NPROC 4

/*
 * want_to_eat[i] is true <-> philospher with pid = i wants
 * two forks to eat.
 */
bool want_to_eat[NPROC] = false;

/*
 * eating[i] is true <-> philosopher with pid = i has both
 * forks and is eating.
 */
bool eating[NPROC] = false;

/*
 * Pseudo-type semaphore
 */
#define semaphore byte


/*
 * Forks - each fork *is* a mutual exclusion semaphore
 */
semaphore fork[NPROC] = 1;

/*
 * Up and down functions on semaphores.
 * down blocks if the semaphore is 0 on entry.
 */
inline up(s) {s++}
inline down(s) {atomic{ s > 0 ; s--}}


/*
 * Forever process (4 copies)
 */
active[4] proctype Phil() {
    byte me = _pid ;				// _pid returns current process number (0-3)


	do
	::
		/*
		 * Thinking - Non-Critical Section
		 */
		printf("P%d is thinking\n", me) ;

	    /*
         * Get The Forks - Enter the Critical Section
         */
		want_to_eat[me] = true;
		printf("P%d wants to eat \n", me);
		down(fork[me]);						//get the right fork
		down(fork[ (me+1) % NPROC ]);		//get the left fork
		want_to_eat[me] = false;

		/*
	     * Eating - Executing in the Critical Section
		 */
		eating[me] = true;
		printf("P%d is eating \n", me);
	
		/*
		 * Give Back The Forks - Leave the Critical Section
		 */
      	eating[me] = false;
		up(fork[me]);
		up(fork[ (me+1) % NPROC ])
	od
}
