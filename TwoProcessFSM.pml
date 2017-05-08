/* Two Processes - On SMR */

int i = 0;

active proctype P()
{
do
::if
	:: i==0 -> i=1
	:: i==0 -> i=i+2
	:: i==1 -> i=i+2
	:: i==2 -> i=3
	:: i==3 -> i=i-1
	:: else -> printf("P BLOCKED!\n");
  fi;
od;
}

active proctype R()
{
do
::if
	:: i==0 -> i=2
	:: i==2 -> i=i+2
	:: i==2 -> i=i-2
	:: i==4 -> i=0
	:: else -> printf("R BLOCKED!\n");
  fi;
od;
}
