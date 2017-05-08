	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM L_Fair */
;
		;
		;
		;
		
	case 5: /* STATE 11 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM L_Live */
;
		;
		;
		;
		
	case 8: /* STATE 11 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC WaitingRoom */

	case 9: /* STATE 1 */
		;
		XX = 1;
		unrecv(now.to_room, XX-1, 0, 3, 1);
		unrecv(now.to_room, XX-1, 1, ((int)((P2 *)this)->_7_cid), 0);
		((P2 *)this)->_7_cid = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 11: /* STATE 10 */
		;
		now.napping[ Index(((P2 *)this)->_7_bid, 2) ] = trpt->bup.ovals[2];
		now.nnap = trpt->bup.ovals[1];
		((P2 *)this)->_7_bid = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 12: /* STATE 10 */
		;
		now.napping[ Index(((P2 *)this)->_7_bid, 2) ] = trpt->bup.ovals[2];
		now.nnap = trpt->bup.ovals[1];
		((P2 *)this)->_7_bid = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 13: /* STATE 10 */
		;
		now.napping[ Index(((P2 *)this)->_7_bid, 2) ] = trpt->bup.ovals[1];
		now.nnap = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: /* STATE 11 */
		;
		_m = unsend(now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ]);
		;
		goto R999;

	case 15: /* STATE 14 */
		;
		now.waiting[ Index(((P2 *)this)->_7_cid, 3) ] = trpt->bup.ovals[1];
		now.nwait = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: /* STATE 18 */
		;
		XX = 1;
		unrecv(now.to_room, XX-1, 0, 2, 1);
		unrecv(now.to_room, XX-1, 1, ((int)((P2 *)this)->_7_bid), 0);
		((P2 *)this)->_7_bid = trpt->bup.oval;
		;
		;
		goto R999;

	case 17: /* STATE 20 */
		;
		now.nextc = trpt->bup.oval;
		;
		goto R999;

	case 18: /* STATE 29 */
		;
		now.waiting[ Index(now.nextc, 3) ] = trpt->bup.ovals[1];
		now.nwait = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: /* STATE 24 */
		;
		now.nextc = trpt->bup.oval;
		;
		goto R999;

	case 20: /* STATE 29 */
		;
		now.waiting[ Index(now.nextc, 3) ] = trpt->bup.ovals[1];
		now.nwait = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 21: /* STATE 30 */
		;
		_m = unsend(now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ]);
		;
		goto R999;

	case 22: /* STATE 33 */
		;
		now.napping[ Index(((P2 *)this)->_7_bid, 2) ] = trpt->bup.ovals[1];
		now.nnap = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 23: /* STATE 37 */
		;
		XX = 1;
		unrecv(now.to_room, XX-1, 0, 1, 1);
		unrecv(now.to_room, XX-1, 1, ((int)((P2 *)this)->_7_cid), 0);
		((P2 *)this)->_7_cid = trpt->bup.oval;
		;
		;
		goto R999;

	case 24: /* STATE 38 */
		;
		_m = unsend(now.to_cust[ Index(((int)((P2 *)this)->_7_cid), 3) ]);
		;
		goto R999;

	case 25: /* STATE 42 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Customer */
;
		;
		
	case 27: /* STATE 2 */
		;
		_m = unsend(now.to_room);
		;
		goto R999;

	case 28: /* STATE 3 */
		;
		XX = 1;
		unrecv(now.to_cust[ Index(((int)((P1 *)this)->id), 3) ], XX-1, 0, trpt->bup.oval, 1);
		;
		;
		goto R999;
;
		;
		
	case 30: /* STATE 8 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Barber */

	case 31: /* STATE 1 */
		;
		_m = unsend(now.to_room);
		;
		goto R999;

	case 32: /* STATE 2 */
		;
		XX = 1;
		unrecv(now.to_barber[ Index(((int)((P0 *)this)->id), 2) ], XX-1, 0, ((int)((P0 *)this)->_5_cid), 1);
		((P0 *)this)->_5_cid = trpt->bup.oval;
		;
		;
		goto R999;
;
		
	case 33: /* STATE 3 */
		goto R999;

	case 34: /* STATE 6 */
		;
		_m = unsend(now.to_room);
		;
		goto R999;

	case 35: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

