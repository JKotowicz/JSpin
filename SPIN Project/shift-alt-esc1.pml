/*
 * Starter skeleton for Cafe using semaphores
 */

#define NCUSTS 2 	/* number of customers */
#define NCASHIERS 1 /* number of cashiers */
#define NSERVERS 1 	/* number of servers */

#define sema byte   /* define a sempahore */

sema mutex = 1;
sema cust_Waiting[NCUSTS] = 0;
sema cash_Waiting[NCASHIERS] = 0;

/*
 * up and down functions for semaphores
 */
inline up(s) {s++;}
inline down(s) {atomic{ s>0 ; s--}}

mtype = {CHILI, SANDWICH, PIZZA} ;	/* the types of foods */

byte numCustWait = 0;
byte numCashWait = 0;
mtype foodOrder[NCUSTS];
byte custWait[NCASHIERS];


/*
 * Process representing a customer.
 * Takes in their favorite food and an integer id
 * to represent them
 */
proctype Customer(mtype favorite; byte id) {
	foodOrder[id] = favorite;
	/* customer cycle */

	do
	::
		/* 1. Customer enters the cafe */
		printf("C%d enters.\n", id) ;

		/* 2. Record a new customer */
		numCustWait++;
	
		/* 3. Wait for the cashier */
		down(cust_Waiting[id]);
		
		/* 4. Customer places order for favorite food */
		printf("C%d orders %e.\n", id, favorite) ;
		
		/* 5. Wait for the order to be fulfilled */
		down(cust_Waiting[id]);

		/* 6. Customer exits with food */
		printf("C%d leaves.\n", id);
	od ;

}

/*
 * Process representing a cashier
 */
proctype Cashier() {
	byte id = 0;
	do
	::
		down(mutex);
		if
		:: numCustWait != 0 ->
			byte n;	//random number varriable 
			n = 0;
			do
				:: n < (NCUSTS-1) -> n++;
				:: n > 0 -> n--;
				:: break;
			od;

			if
			:: cust_Waiting[n] == 0 ->
				printf("Cashier selects C%d.\n", n);
				custWait[id] = n;
				up(cust_Waiting[n]);
				printf("Cashier gets order of %e from C%d.\n", foodOrder[n], n);
				printf("Cashier gives order to server.\n");
				numCashWait++;
				up(mutex);
				down(cash_Waiting[id]);
			fi;
			:: else ->
				printf("Cashier is waiting for a new customer.\n");
				up(mutex);
				skip;
		fi;
	od ;

}

/*
 * Process representing a server 
 */
proctype Server()
{
	do
	::
		down(mutex);
		if
		:: numCashWait != 0 ->
			byte n;	//random number varriable 
			n = 0;
			do
				:: n < (NCASHIERS-1) -> n++;
				:: n > 0 -> n--;
				:: break;
			od;

			if
			:: cash_Waiting[n] == 0 ->
				printf("Server retrieves an order of %e for C%d.\n", foodOrder[custWait[n]], custWait[n]) ;
				numCashWait--;
				up(cash_Waiting[n]);
				printf("Server makes order of %e.\n", foodOrder[custWait[n]]);
				printf("Server delivers order to C%d.\n", custWait[n]);
				up(mutex);
				up(cust_Waiting[custWait[n]]);
			fi;
			:: else ->
				printf("Server is free.\n") ;
				up(mutex);
				skip;
		fi;
	od ;

}

/*
 * Sets up processes. This model creates two
 * customers with the favorite foods PIZZA & CHILI.
 */
init{

	atomic{
		run Customer(PIZZA, 0) ;
		run Customer(CHILI, 1) ;
		run Cashier();
		run Server();		
	}
}

/*
 * Safety: The server always gives the correct food
 * for the customer
 */

ltl S_ServerCorrectFood {
	[](foodOrder[0] == PIZZA && foodOrder[1] == CHILI && foodOrder[2] == SANDWICH)
}

/*
 * Safety: The cashier always sends the correct customer
 * order to the servers.
 */

ltl S_CashierSendsCorrectOrder{
	[](foodOrder[0] == PIZZA && foodOrder[1] == CHILI && foodOrder[2] == SANDWICH)
}

/* 
 * Liveness: If the customer wants to place
 * an order then it eventually does.
 */

ltl L_CustomerOrders {
	<>(cust_Waiting[0] == 1 && cust_Waiting[2] == 1 && cust_Waiting[1] == 1)
}

/* 
 * Liveness: Eventually the server is busy
 * fulfilling an order.
 */

ltl L_ServerBusy{
	[]((numCustWait == NCUSTS) -> <>(numCustWait < NCUSTS))
}

