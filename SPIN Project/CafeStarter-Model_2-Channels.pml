/*
 * Starter skeleton for Cafe using channels
 */

#define NCUSTS 3		/* number of customers */
#define NCASHIERS 1		/* number of cashiers */
#define NSERVERS 2		/* number of servers */

#define NOBODY 255		/* default assignment for nobody */

mtype = {CHILI, SANDWICH, PIZZA} ;	/* the types of foods */
mtype favorite_foods[3] ;			/* default assignment of customers' favorite foods */


/* Channel definitions (suggested) */


/*
 * Channel for customers to give an order to the cashier
 */


/*
 * Channel for cashier to tell a customer they can order
 */


/*
 * Channel for cashier to give a server a new order
 */


/* 
 * Channel for a serve to give a customer their
 * finished order
 */




/*
 * Process representing a customer.
 * Takes in their favorite food and an integer id
 * to represent them
 */
proctype Customer(mtype favorite; byte id)
{
	mtype order;

	do
	::
	
	printf("C%d enters.\n", id) ;


	/* customer tells the cashier they are waiting to order */

	
	/* block until the cashier says they may order */


	/* tell the cashier their order */

	printf("C%d orders %e.\n", id, favorite);

	/* block until the customer receives their food */
			
	printf("C%d leaves with %e.\n", id, order);

	od ;

}


/*
 * Process representing a cashier
 */
proctype Cashier()
{

	/* the current customer ordering*/
	byte current ;

	/* the current customer's order */
	mtype order ;

	do
	::

	printf("Cashier is waiting for a new customer.\n");

	/* block until a customer wants to order */

	/* tell a customer they can order */


	/* block until the cashier receives the customer's order */

	
	/* give the order to the server */

		
		
	od ;


}

/*
 * Process representing a server 
 */
proctype Server(byte id)
{
	/* the customer the server is making food for */
	byte my_customer ;

	/* the order the server is making */
	mtype order ;

	do
	::
		printf("Server%d is free.\n", id) ;
		
		/* block until an order is given */

		printf("Server%d makes %e for C%d.\n", id, order, my_customer) ;
		
		/* make and give the order to the customer */

	od ;


}


/*
 * Sets up processes. This model creates three
 * customers with a specific favorite food, and
 * two servers.
 */
init{
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
	true;
}

/*
 * Safety: It is never the case that the two servers 
 * are busy working on the same order.
 */
ltl S_NeverSameOrder {
 true;
}

/* 
 * Liveness: If a customer wants to place
 * an order then a customer eventually does.
 */
ltl L_EventuallyOrder {
	true;
}

/* 
 * Liveness: it is always the case that eventually
 * a server is busy making an order 
 */
ltl L_EventuallyServerBusy {
	true;
}



