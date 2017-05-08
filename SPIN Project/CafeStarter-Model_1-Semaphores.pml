/*
 * Starter skeleton for Cafe using semaphores
 */

#define NCUSTS 2    /* number of customers */
#define NCASHIERS 1 /* number of cashiers */
#define NSERVERS 1  /* number of servers */

typedef Order{
    byte id;
    mtype food;
};

#define NOBODY  255

#define semaphore byte   /* define a sempahore */
semaphore mutex = 1;
semaphore serve_mutex = 1;
semaphore order_wait[NCUSTS] = 0;
semaphore food_wait[NCUSTS] = 0;
semaphore ordering = 0;

/*
 * up and down functions for semaphores
 */
inline up(s) {s++;}
inline down(s) {atomic{ s>0 ; s--}}

mtype = {CHILI, SANDWICH, PIZZA} ;  /* the types of foods */

Order queue[NCUSTS] = NOBODY;
Order currOrder;

byte currentCust = NOBODY;
byte orderLine[NCUSTS] = NOBODY;
byte foodLine[NCUSTS] = NOBODY;
byte nwaiting = 0; 
byte nserving = 0; 

byte next = 0;
byte first = 0;

/*
 * Process representing a customer.
 * Takes in their favorite food and an integer id
 * to represent them
 */
proctype Customer(mtype favorite; byte id) {
    /* customer cycle */
    do
    ::
        /* 1. Customer enters the cafe */
        printf("C%d enters.\n", id) ;
        down(mutex);
        
        /* 2. Record a new customer */
        orderLine[id] = id ; 
        printf("C%d gets in line\n", id) ;
        
        /* 3. Wait for the cashier */
        nwaiting++;
        down(order_wait[id]);
        /* 4. Customer places order for favorite food */
        printf("C%d orders %e.\n", id, favorite) ;
        
        currentCust = id;
        
        up(ordering);
        up(mutex);
        
        currOrder.id = id;
        currOrder.food = favorite;

        /* 5. Wait for the order to be fulfilled */
        down(food_wait[id]);


        /* 6. Customer exits with food */
        printf("C%d leaves.\n", id);
        

    od ;
}

/*
 * Process representing a cashier
 */
proctype Cashier() {
    byte cust = NOBODY;

    do
    ::
        down(ordering);
        cust = currentCust;

        down(mutex);
        up(order_wait[cust]);//Taking customers order
        /* 1. Cashier waits for a new customer */
        if 
        :: nwaiting == 0 ->
            currentCust = NOBODY;
            printf("Cashier is waiting for a new customer.\n");
            up(mutex);

        :: else ->  
        /* 2. Cashier selects a waiting customer */
            printf("Cashier selects customer.\n");
            if
            :: nwaiting > 1 ->
                :: true -> currentCust = orderLine[0];
                :: true -> currentCust = orderLine[1];
            :: else ->
                if
                :: orderLine[0] != NOBODY ->
                    currentCust = orderLine[0];
                :: else ->
                    currentCust = orderLine[1];
                fi;
            fi;
            nwaiting--;
        fi;
            
             
        /* 3. Cashier takes selected customer's order */
        printf("Cashier takes order.\n");
        down(serve_mutex);
        queue[next].id = currOrder.id;
        queue[next].food = currOrder.food;
        
        next = (next +1) % NCUSTS;        

        /* 4. Cashier passes order to server */
        printf("Cashier passes order to server.\n");
        
        nserving++;
        up(serve_mutex);
        up(mutex);
    od ;
}

/*
 * Process representing a server 
 */
proctype Server() {

    Order serverOrder;

    do
    ::
        
        /* Server is waiting for an order */
        
        down(serve_mutex);
        if 
        :: nserving == 0 ->
           printf("Server is free.\n") ;
           up(serve_mutex);
           
        :: else ->    
            /* Server retrives an order and takes it down */
            printf("Server is retrieves an order for customer...\n") ;
        
            serverOrder.id = queue[first].id;
            serverOrder.food = queue[first].food;
            
            first = (first + 1) % NCUSTS;
        fi;

        /* Server makes the order */
        if
        :: serverOrder.id == NOBODY && serverOrder.food == NOBODY ->
            up(serve_mutex);
        :: else ->
            printf("Server makes %e.\n", serverOrder.food);
            
        fi;


        /* server gives the order to the customer */
        printf("Server delivers order to customer.\n");
        up(food_wait[serverOrder.id]);
        up(serve_mutex);
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
    true;
}

/*
 * Safety: The cashier always sends the correct customer
 * order to the servers.
 */

ltl S_CashierSendsCorrectOrder{
    true;
}

/* 
 * Liveness: If the customer wants to place
 * an order then it eventually does.
 */

ltl L_CustomerOrders {
    true;
}

/* 
 * Liveness: Eventually the server is busy
 * fulfilling an order.
 */

ltl L_ServerBusy{
    true;
}