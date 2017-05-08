/* One Process FSM */
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
  fi;
od;
}


