/*
 * Starter skeleton for Cafe using channels
 */

#define NCUSTS 3		/* number of customers */
#define NCASHIERS 1		/* number of cashiers */
#define NSERVERS 2		/* number of servers */

#define NOBODY 255		/* default assignment for nobody */

mtype = {CHILI, SANDWICH, PIZZA, NONE} ;	/* the types of foods */
mtype favorite_foods[3] ;			/* default assignment of customers' favorite foods */

local byte currentCust; /* Current customer ordering */
local mtype currentOrder; /* Current order that the cashier has */

local byte cust[NSERVERS]; /* Customer that each server is serving */
local byte numCustWait = 0; /* Amount of customers waiting */

/* Channel definitions (suggested) */

/*
 * Channel for customers to give an order to the cashier
 */
chan cust_order = [0] of {mtype, byte}

/*
 * Channel for cashier to tell a customer they can order
 */
chan cash_order = [0] of {bool}

/*
 * Channel for cashier to give a server a new order
 */
chan sever_order = [0] of {mtype, byte}

/* 
 * Channel for a server to give a customer their
 * finished order
 */
chan server_to_cust[NCUSTS] = [0] of {mtype}

/*
 * Process representing a customer.
 * Takes in their favorite food and an integer id
 * to represent them
 */
proctype Customer(mtype favorite; byte id) {

	/* The food received from the server */
	mtype order;

	do
	::
	
	printf("C%d enters.\n", id) ;

	/* customer tells the cashier they are waiting to order */
	numCustWait++ ;
	
	/* block until the cashier says they may order */
	cash_order ? _ ;

	/* tell the cashier their order */
	cust_order ! favorite(id) ;
	printf("C%d orders %e.\n", id, favorite) ;

	/* block until the customer receives their food */
	server_to_cust[id] ? order ;
	numCustWait-- ;
	printf("C%d leaves with %e.\n", id, order); 

	od ;
}


/*
 * Process representing a cashier
 */
proctype Cashier() {

	/* the current customer ordering*/
	byte current_customer ;

	/* the current customer's order */
	mtype order ;

	do
	::

	printf("Cashier is waiting for a new customer.\n");

	/* block until a customer wants to order */
	do
	:: if 
		:: numCustWait> 0 -> break ; 
	   fi;
	od ;

	/* tell a customer they can order */
	cash_order ! true;

	/* block until the cashier receives the customer's order */
	cust_order ? order(current_customer);
	currentOrder = order;
	currentCust = current_customer;

	/* give the order to the server */
	sever_order ! order(current_customer) ;
	currentCust = NOBODY;
		
	od ;
}

/*
 * Process representing a server 
 */
proctype Server(byte id) {

	/* the customer that the server is making food for */
	byte customer ;

	/* the order the server is making */
	mtype order ;

	do
	::
		printf("Server%d is free.\n", id) ;
		
		/* block until an order is given */
		sever_order ? order(customer) ;
		cust[id] = customer;

		printf("Server%d makes %e for C%d.\n", id, order, customer) ;
		
		/* make and give the order to the customer */
		server_to_cust[customer] ! order ;
		cust[id] = NOBODY;

	od ;
}


/*
 * Sets up processes. This model creates three
 * customers with a specific favorite food, and
 * two servers.
 */
init {
	favorite_foods[0] = PIZZA ;
	favorite_foods[1] = SANDWICH ;
	favorite_foods[2] = CHILI ;
	atomic{
		run Customer(PIZZA, 0) ;
		run Customer(SANDWICH, 1);
		run Customer(CHILI, 2);
		run Cashier();
		run Server(0);
		run Server(1);
	}
}


/*
 * Safety:  The cashier always sends the correct order 
 * for a customer to the servers.
 */
ltl S_CashierCorrectOrder {
	[]((currentCust == 1 -> currentOrder == favorite_foods[1]) && 
		(currentCust == 2 -> currentOrder == favorite_foods[2]) &&
		(currentCust == 3 -> currentOrder == favorite_foods[3]))
}

/*
 * Safety: It is never the case that the two servers 
 * are busy working on the same order.
 */
ltl S_NeverSameOrder {
	[]((cust[0] != NOBODY && cust[1] != NOBODY) -> cust[0] != cust[1])
}

/* 
 * Liveness: If a customer wants to place
 * an order then a customer eventually does.
 */
ltl L_EventuallyOrder {
	[]((numCustWait == NCUSTS) -> <> (numCustWait < NCUSTS))
}

/* 
 * Liveness: it is always the case that eventually
 * a server is busy making an order 
 */
ltl L_EventuallyServerBusy {
	[](<>(cust[0] != NOBODY && cust[1] != NOBODY))
}
