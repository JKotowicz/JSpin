/* Simple Guard */

int a = 5, b=5;
int max;
int branch;

active proctype P()
{

if
  :: a >= b -> max = a; branch =1
  :: b >= a -> max = b; branch =2
  :: else -> branch = 3
fi;

printf ("The max of %d and %d = %d by branch %d\n", a, b, max, branch)
}
