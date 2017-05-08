/* Nondeterministic Traffic Light */

mtype = {red, yellow, green};
mtype light = green;

active proctype P()
{

do
::if
   :: light == green -> light=green
   :: light == green -> light = red
   :: light == green -> light = yellow
  fi;
  printf ("The light is now %e\n", light)
od;


}
