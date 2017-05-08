/* Deterministic Traffic Light */

mtype = {red, yellow, green};
mtype light = green;

active proctype P()
{

do
::if
   :: light == green -> light= yellow
   :: light == red -> light = green
   :: light == yellow -> light = red
  fi;
  printf ("The light is now %e\n", light)
od;


}
