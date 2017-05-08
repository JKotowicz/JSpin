#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM L_EventuallyServerBusy */
	case 3: /* STATE 1 - _spin_nvr.tmp:32 - [(!(((cust[0]!=255)&&(cust[1]!=255))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !(((((int)now.cust[0])!=255)&&(((int)now.cust[1])!=255)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:37 - [(!(((cust[0]!=255)&&(cust[1]!=255))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported7)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][7] = 1;
		if (!( !(((((int)now.cust[0])!=255)&&(((int)now.cust[1])!=255)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 11 - _spin_nvr.tmp:39 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported11)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM L_EventuallyOrder */
	case 6: /* STATE 1 - _spin_nvr.tmp:21 - [((!(!((numCustWait==3)))&&!((numCustWait<3))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!(( !( !((((int)now.numCustWait)==3)))&& !((((int)now.numCustWait)<3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 7 - _spin_nvr.tmp:26 - [(!((numCustWait<3)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported7)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][7] = 1;
		if (!( !((((int)now.numCustWait)<3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 11 - _spin_nvr.tmp:28 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported11)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM S_NeverSameOrder */
	case 9: /* STATE 1 - _spin_nvr.tmp:12 - [(!((!(((cust[0]!=255)&&(cust[1]!=255)))||(cust[0]!=cust[1]))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !(( !(((((int)now.cust[0])!=255)&&(((int)now.cust[1])!=255)))||(((int)now.cust[0])!=((int)now.cust[1]))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 8 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported8)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM S_CashierCorrectOrder */
	case 11: /* STATE 1 - _spin_nvr.tmp:3 - [(!((((!((currentCust==1))||(currentOrder==favorite_foods[1]))&&(!((currentCust==2))||(currentOrder==favorite_foods[2])))&&(!((currentCust==3))||(currentOrder==favorite_foods[3])))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(((( !((((int)now.currentCust)==1))||(now.currentOrder==now.favorite_foods[1]))&&( !((((int)now.currentCust)==2))||(now.currentOrder==now.favorite_foods[2])))&&( !((((int)now.currentCust)==3))||(now.currentOrder==now.favorite_foods[ Index(3, 3) ]))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 8 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported8)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 13: /* STATE 1 - shift-alt-esc2.pml:152 - [favorite_foods[0] = PIZZA] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = now.favorite_foods[0];
		now.favorite_foods[0] = 2;
#ifdef VAR_RANGES
		logval("favorite_foods[0]", now.favorite_foods[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 2 - shift-alt-esc2.pml:153 - [favorite_foods[1] = SANDWICH] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = now.favorite_foods[1];
		now.favorite_foods[1] = 3;
#ifdef VAR_RANGES
		logval("favorite_foods[1]", now.favorite_foods[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 3 - shift-alt-esc2.pml:154 - [favorite_foods[2] = CHILI] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = now.favorite_foods[2];
		now.favorite_foods[2] = 4;
#ifdef VAR_RANGES
		logval("favorite_foods[2]", now.favorite_foods[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 4 - shift-alt-esc2.pml:156 - [(run Customer(PIZZA,0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(0, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 5 - shift-alt-esc2.pml:157 - [(run Customer(SANDWICH,1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][5] = 1;
		if (!(addproc(0, 3, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 6 - shift-alt-esc2.pml:158 - [(run Customer(CHILI,2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][6] = 1;
		if (!(addproc(0, 4, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 7 - shift-alt-esc2.pml:159 - [(run Cashier())] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][7] = 1;
		if (!(addproc(1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 8 - shift-alt-esc2.pml:160 - [(run Server(0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][8] = 1;
		if (!(addproc(2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 9 - shift-alt-esc2.pml:161 - [(run Server(1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][9] = 1;
		if (!(addproc(2, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 11 - shift-alt-esc2.pml:165 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Server */
	case 23: /* STATE 1 - shift-alt-esc2.pml:128 - [printf('Server%d is free.\\n',id)] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][1] = 1;
		Printf("Server%d is free.\n", ((int)((P2 *)this)->id));
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 2 - shift-alt-esc2.pml:131 - [sever_order?order,customer] (0:0:2 - 1) */
		reached[2][2] = 1;
		if (boq != now.sever_order) continue;
		if (q_len(now.sever_order) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->_8_order;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->_8_customer);
		;
		((P2 *)this)->_8_order = qrecv(now.sever_order, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Server:order", ((P2 *)this)->_8_order);
#endif
		;
		((P2 *)this)->_8_customer = qrecv(now.sever_order, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Server:customer", ((int)((P2 *)this)->_8_customer));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.sever_order);
		sprintf(simtmp, "%d", ((P2 *)this)->_8_order); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_8_customer)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.sever_order))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 25: /* STATE 3 - shift-alt-esc2.pml:132 - [cust[id] = customer] (0:5:1 - 1) */
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)now.cust[ Index(((int)((P2 *)this)->id), 2) ]);
		now.cust[ Index(((P2 *)this)->id, 2) ] = ((int)((P2 *)this)->_8_customer);
#ifdef VAR_RANGES
		logval("cust[Server:id]", ((int)now.cust[ Index(((int)((P2 *)this)->id), 2) ]));
#endif
		;
		/* merge: printf('Server%d makes %e for C%d.\\n',id,order,customer)(5, 4, 5) */
		reached[2][4] = 1;
		Printf("Server%d makes %e for C%d.\n", ((int)((P2 *)this)->id), ((P2 *)this)->_8_order, ((int)((P2 *)this)->_8_customer));
		_m = 3; goto P999; /* 1 */
	case 26: /* STATE 5 - shift-alt-esc2.pml:137 - [server_to_cust[customer]!order] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][5] = 1;
		if (q_len(now.server_to_cust[ Index(((int)((P2 *)this)->_8_customer), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.server_to_cust[ Index(((int)((P2 *)this)->_8_customer), 3) ]);
		sprintf(simtmp, "%d", ((P2 *)this)->_8_order); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.server_to_cust[ Index(((int)((P2 *)this)->_8_customer), 3) ], 0, ((P2 *)this)->_8_order, 0, 1);
		{ boq = now.server_to_cust[ Index(((int)((P2 *)this)->_8_customer), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 27: /* STATE 6 - shift-alt-esc2.pml:138 - [cust[id] = 255] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)now.cust[ Index(((int)((P2 *)this)->id), 2) ]);
		now.cust[ Index(((P2 *)this)->id, 2) ] = 255;
#ifdef VAR_RANGES
		logval("cust[Server:id]", ((int)now.cust[ Index(((int)((P2 *)this)->id), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 10 - shift-alt-esc2.pml:143 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Cashier */
	case 29: /* STATE 1 - shift-alt-esc2.pml:90 - [printf('Cashier is waiting for a new customer.\\n')] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		Printf("Cashier is waiting for a new customer.\n");
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 2 - shift-alt-esc2.pml:95 - [((numCustWait>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.numCustWait)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 9 - shift-alt-esc2.pml:100 - [cash_order!1] (0:0:0 - 3) */
		IfNotBlocked
		reached[1][9] = 1;
		if (q_len(now.cash_order))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.cash_order);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cash_order, 0, 1, 0, 1);
		{ boq = now.cash_order; };
		_m = 2; goto P999; /* 0 */
	case 32: /* STATE 10 - shift-alt-esc2.pml:103 - [cust_order?order,current_customer] (0:0:2 - 1) */
		reached[1][10] = 1;
		if (boq != now.cust_order) continue;
		if (q_len(now.cust_order) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_7_order;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->_7_current_customer);
		;
		((P1 *)this)->_7_order = qrecv(now.cust_order, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Cashier:order", ((P1 *)this)->_7_order);
#endif
		;
		((P1 *)this)->_7_current_customer = qrecv(now.cust_order, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Cashier:current_customer", ((int)((P1 *)this)->_7_current_customer));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cust_order);
		sprintf(simtmp, "%d", ((P1 *)this)->_7_order); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->_7_current_customer)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.cust_order))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 33: /* STATE 11 - shift-alt-esc2.pml:104 - [currentOrder = order] (0:13:2 - 1) */
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.currentOrder;
		now.currentOrder = ((P1 *)this)->_7_order;
#ifdef VAR_RANGES
		logval("currentOrder", now.currentOrder);
#endif
		;
		/* merge: currentCust = current_customer(13, 12, 13) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.currentCust);
		now.currentCust = ((int)((P1 *)this)->_7_current_customer);
#ifdef VAR_RANGES
		logval("currentCust", ((int)now.currentCust));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 34: /* STATE 13 - shift-alt-esc2.pml:108 - [sever_order!order,current_customer] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][13] = 1;
		if (q_len(now.sever_order))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.sever_order);
		sprintf(simtmp, "%d", ((P1 *)this)->_7_order); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->_7_current_customer)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.sever_order, 0, ((P1 *)this)->_7_order, ((int)((P1 *)this)->_7_current_customer), 2);
		{ boq = now.sever_order; };
		_m = 2; goto P999; /* 0 */
	case 35: /* STATE 14 - shift-alt-esc2.pml:109 - [currentCust = 255] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.currentCust);
		now.currentCust = 255;
#ifdef VAR_RANGES
		logval("currentCust", ((int)now.currentCust));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 18 - shift-alt-esc2.pml:114 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Customer */
	case 37: /* STATE 1 - shift-alt-esc2.pml:54 - [printf('C%d enters.\\n',id)] (0:3:1 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		Printf("C%d enters.\n", ((int)((P0 *)this)->id));
		/* merge: numCustWait = (numCustWait+1)(3, 2, 3) */
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.numCustWait);
		now.numCustWait = (((int)now.numCustWait)+1);
#ifdef VAR_RANGES
		logval("numCustWait", ((int)now.numCustWait));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 38: /* STATE 3 - shift-alt-esc2.pml:60 - [cash_order?] (0:0:1 - 1) */
		reached[0][3] = 1;
		if (boq != now.cash_order) continue;
		if (q_len(now.cash_order) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = qrecv(now.cash_order, XX-1, 0, 0);
		;
		qrecv(now.cash_order, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cash_order);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.cash_order))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 39: /* STATE 4 - shift-alt-esc2.pml:63 - [cust_order!favorite,id] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (q_len(now.cust_order))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.cust_order);
		sprintf(simtmp, "%d", ((P0 *)this)->favorite); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cust_order, 0, ((P0 *)this)->favorite, ((int)((P0 *)this)->id), 2);
		{ boq = now.cust_order; };
		_m = 2; goto P999; /* 0 */
	case 40: /* STATE 5 - shift-alt-esc2.pml:64 - [printf('C%d orders %e.\\n',id,favorite)] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		Printf("C%d orders %e.\n", ((int)((P0 *)this)->id), ((P0 *)this)->favorite);
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 6 - shift-alt-esc2.pml:67 - [server_to_cust[id]?order] (0:0:1 - 1) */
		reached[0][6] = 1;
		if (boq != now.server_to_cust[ Index(((int)((P0 *)this)->id), 3) ]) continue;
		if (q_len(now.server_to_cust[ Index(((int)((P0 *)this)->id), 3) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)this)->_6_order;
		;
		((P0 *)this)->_6_order = qrecv(now.server_to_cust[ Index(((int)((P0 *)this)->id), 3) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Customer:order", ((P0 *)this)->_6_order);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.server_to_cust[ Index(((int)((P0 *)this)->id), 3) ]);
		sprintf(simtmp, "%d", ((P0 *)this)->_6_order); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.server_to_cust[ Index(((int)((P0 *)this)->id), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 42: /* STATE 7 - shift-alt-esc2.pml:68 - [numCustWait = (numCustWait-1)] (0:9:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.numCustWait);
		now.numCustWait = (((int)now.numCustWait)-1);
#ifdef VAR_RANGES
		logval("numCustWait", ((int)now.numCustWait));
#endif
		;
		/* merge: printf('C%d leaves with %e.\\n',id,order)(9, 8, 9) */
		reached[0][8] = 1;
		Printf("C%d leaves with %e.\n", ((int)((P0 *)this)->id), ((P0 *)this)->_6_order);
		/* merge: .(goto)(0, 10, 9) */
		reached[0][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 43: /* STATE 12 - shift-alt-esc2.pml:73 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

