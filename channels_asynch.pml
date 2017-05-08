/*
*	Create an asynchronous message channel by defining a FIFO buffer of [5]
*	
*/

chan request = [5] of {byte};	
									

/*
*	Server blocks at ::request ? waiting for client message
*	When a message comes in the guard evaluates to true
*	Sever processes next message (FIFO) from it's buffer.
*	Server does not send an acknowledgement to the client.
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
*	Client will continue to send messages to the request channel
*	until it is full, at which point the Client block until a slot
*	becomes available.
*/
active proctype Client(){
byte send = 0;
do
::	send = send + 1;
	printf("Sx: %d\n", send);
	request ! send;
od
}