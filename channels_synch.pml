/*
*	Create a synchronous message channel by indicating a buffer of [0]
*/

chan request = [0] of {byte};	
									

/*
*	Server blocks at ::request ? waiting for client message
*	When a message comes in the guard evaluates to true
*	Server replies with an acknowledgement (got it) - Synchronous
*/
active proctype Server () {
byte rec;
do
:: request ? rec -> printf("Rx: %d\n", rec);  
od
}

/*
*	Client process sends a message on the request channel with 
*	packet containg the value of "send".
*	Client blocks until it receives an acknowledgement from Server.
*/
active proctype Client(){
byte send = 0;
do
::	send = send + 1;
	printf("Sx: %d\n", send);
	request ! send;
od
}