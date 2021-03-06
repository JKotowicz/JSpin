#define NCUST 4
#define NCHAIR 1
#define NBARB 2
#define NO_ONE 255

chan customer_to_room = [0] of { mtype, byte } ; /* customer makes request to room, byte=cust ID */
chan barber_to_room = [0] of { mtype, byte } ;		 /* barber is done */

chan to_barber[NBARB] = [0] of { mtype, byte } ;		 /* from either room or customer */
chan to_customer[NCUST] = [0] of { mtype } ;

/*
 * Customer to waiting room.
 */
mtype = { ENTER } ;

/*
 * Customer to barber.
 */
mtype = { IN_CHAIR } ;

/*
 * Waiting room to customer
 */
mtype = { SIT, NO_ROOM } ;

/*
 * Barber room to customer
 */
mtype = { HAVE_A_SEAT } ;

/*
 * Waiting room to barber.
 */

mtype = {NAP, NEXT_CUST} ;


/*
 * Barber to waiting room and customer.
 */

mtype = {DONE} ;

proctype WaitingRoom() {
	byte eid = 0;				/* cust ID entering */
	byte bid = 0;
	byte in_bchair[NBARB] = NO_ONE;	/* cust ID in babrber chair */
	byte in_wrchair = NO_ONE;	/* cust ID in waiting chair */

	to_barber[bid] ! NAP, 0;			/* create well defined state */

	do
	::	customer_to_room ? ENTER, eid->		/* enter ID of cust */
									/* cust_to_room ? ENTER(eid)  */
		if
		::	in_wrchair != NO_ONE -> 
				to_customer[eid] ! NO_ROOM;
		::  in_bchair[bid]  == NO_ONE ->		/* assume no one in chair, no one waiting */
				to_barber[bid] ! NEXT_CUST(eid);
				in_bchair[bid] = eid;
		::	else ->
				to_customer[eid] ! SIT;
				in_wrchair = eid;
		fi;
	:: barber_to_room ? DONE, bid->
		if
		::	in_wrchair != NO_ONE ->
				to_barber[bid] ! NEXT_CUST(in_wrchair);
				in_bchair[bid] = in_wrchair;
				in_wrchair = NO_ONE;
		::	in_wrchair == NO_ONE ->
				to_barber[bid] ! NAP, eid;		/* ignore customer ID */
				in_bchair[bid] = NO_ONE;
		fi;
	od ;
}

proctype Barber(byte id) {
	byte next_id = NO_ONE ;
	byte in_id = NO_ONE;
	do
	:: to_barber[id] ? NO_ROOM ->
			skip;
	:: to_barber[id] ? NAP, _ ->
		printf("Barber naps zzzzzzzzzz\n");

	:: to_barber[id] ? NEXT_CUST(next_id) ->
		to_customer[next_id] ! HAVE_A_SEAT;

	:: to_barber[id] ? IN_CHAIR(in_id) ->
		assert(next_id == in_id);			/* is this the expected customer? */
		printf("Barber gives C%d a haircut\n", in_id);
		to_customer[in_id] ! DONE;
		barber_to_room ! DONE, id;
		
	od ;
}

proctype Customer(byte id) {
	byte bid = 0;
	do
	::	customer_to_room ! ENTER(id) ;
		if
		:: to_customer[id] ? NO_ROOM ->
			skip;
		:: to_customer[id] ? HAVE_A_SEAT ->
			to_barber[bid] ! IN_CHAIR(id);
			to_customer[id] ? DONE;
		:: to_customer[id] ? SIT ->
			to_customer[id] ? HAVE_A_SEAT ->
			to_barber[bid] ! IN_CHAIR(id);
			to_customer[id] ? DONE;
		fi;		
	od ;
}

init {
	byte i ;

	atomic {
		
		run Customer(0) ;
		run Customer(1);
		run Barber(0) ;
		run Barber(1) ;
		run WaitingRoom() ;
	}
}











