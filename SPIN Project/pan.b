	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM L_EventuallyServerBusy */
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

		 /* CLAIM L_EventuallyOrder */
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

		 /* CLAIM S_NeverSameOrder */
;
		;
		
	case 10: /* STATE 8 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM S_CashierCorrectOrder */
;
		;
		
	case 12: /* STATE 8 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 13: /* STATE 1 */
		;
		now.favorite_foods[0] = trpt->bup.oval;
		;
		goto R999;

	case 14: /* STATE 2 */
		;
		now.favorite_foods[1] = trpt->bup.oval;
		;
		goto R999;

	case 15: /* STATE 3 */
		;
		now.favorite_foods[2] = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 4 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 17: /* STATE 5 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 18: /* STATE 6 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 19: /* STATE 7 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 20: /* STATE 8 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 21: /* STATE 9 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: /* STATE 11 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Server */
;
		;
		
	case 24: /* STATE 2 */
		;
		XX = 1;
		unrecv(now.sever_order, XX-1, 0, ((P2 *)this)->_8_order, 1);
		unrecv(now.sever_order, XX-1, 1, ((int)((P2 *)this)->_8_customer), 0);
		((P2 *)this)->_8_order = trpt->bup.ovals[0];
		((P2 *)this)->_8_customer = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 25: /* STATE 3 */
		;
		now.cust[ Index(((P2 *)this)->id, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 26: /* STATE 5 */
		;
		_m = unsend(now.server_to_cust[ Index(((int)((P2 *)this)->_8_customer), 3) ]);
		;
		goto R999;

	case 27: /* STATE 6 */
		;
		now.cust[ Index(((P2 *)this)->id, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 28: /* STATE 10 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Cashier */
;
		;
		;
		;
		
	case 31: /* STATE 9 */
		;
		_m = unsend(now.cash_order);
		;
		goto R999;

	case 32: /* STATE 10 */
		;
		XX = 1;
		unrecv(now.cust_order, XX-1, 0, ((P1 *)this)->_7_order, 1);
		unrecv(now.cust_order, XX-1, 1, ((int)((P1 *)this)->_7_current_customer), 0);
		((P1 *)this)->_7_order = trpt->bup.ovals[0];
		((P1 *)this)->_7_current_customer = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 33: /* STATE 12 */
		;
		now.currentCust = trpt->bup.ovals[1];
		now.currentOrder = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 34: /* STATE 13 */
		;
		_m = unsend(now.sever_order);
		;
		goto R999;

	case 35: /* STATE 14 */
		;
		now.currentCust = trpt->bup.oval;
		;
		goto R999;

	case 36: /* STATE 18 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Customer */

	case 37: /* STATE 2 */
		;
		now.numCustWait = trpt->bup.oval;
		;
		goto R999;

	case 38: /* STATE 3 */
		;
		XX = 1;
		unrecv(now.cash_order, XX-1, 0, trpt->bup.oval, 1);
		;
		;
		goto R999;

	case 39: /* STATE 4 */
		;
		_m = unsend(now.cust_order);
		;
		goto R999;
;
		;
		
	case 41: /* STATE 6 */
		;
		XX = 1;
		unrecv(now.server_to_cust[ Index(((int)((P0 *)this)->id), 3) ], XX-1, 0, ((P0 *)this)->_6_order, 1);
		((P0 *)this)->_6_order = trpt->bup.oval;
		;
		;
		goto R999;

	case 42: /* STATE 7 */
		;
		now.numCustWait = trpt->bup.oval;
		;
		goto R999;

	case 43: /* STATE 12 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

