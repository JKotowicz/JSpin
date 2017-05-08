byte wantP, wantQ;

active proctype P(){
do
:: printf("noncritical sec P\n");
   	wantP = true;
	!wantQ;
   printf("critical section P\n");
   wantP = false
od;
}

active proctype Q(){
do
:: printf("noncritical sec Q\n");
    wantQ = true;
   	!wantP;
	printf("critical section Q\n");
   wantQ = false
od;
}

ltl Liveness {
 <>(wantQ)
}

