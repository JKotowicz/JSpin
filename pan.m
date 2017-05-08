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

		 /* CLAIM L_Fair */
	case 3: /* STATE 1 - _spin_nvr.tmp:14 - [(!(!(waiting[0])))] (0:0:0 - 1) */
		
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
		if (!( !( !(((int)now.waiting[0])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:19 - [(!(!(waiting[0])))] (0:0:0 - 1) */
		
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
		reached[4][7] = 1;
		if (!( !( !(((int)now.waiting[0])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 11 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1) */
		
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
		reached[4][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM L_Live */
	case 6: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((napping[0]&&napping[1])))&&!((!(napping[0])||!(napping[1])))))] (0:0:0 - 1) */
		
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
		reached[3][1] = 1;
		if (!(( !( !((((int)now.napping[0])&&((int)now.napping[1]))))&& !(( !(((int)now.napping[0]))|| !(((int)now.napping[1])))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 7 - _spin_nvr.tmp:8 - [(!((!(napping[0])||!(napping[1]))))] (0:0:0 - 1) */
		
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
		reached[3][7] = 1;
		if (!( !(( !(((int)now.napping[0]))|| !(((int)now.napping[1]))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 11 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1) */
		
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
		reached[3][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC WaitingRoom */
	case 9: /* STATE 1 - barber3.pml:53 - [to_room?enter,cid] (0:0:1 - 1) */
		reached[2][1] = 1;
		if (boq != now.to_room) continue;
		if (q_len(now.to_room) == 0) continue;

		XX=1;
		if (3 != qrecv(now.to_room, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->_7_cid);
		;
		((P2 *)this)->_7_cid = qrecv(now.to_room, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("WaitingRoom:cid", ((int)((P2 *)this)->_7_cid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_room);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_7_cid)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.to_room))
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
	case 10: /* STATE 2 - barber3.pml:55 - [((nnap>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((int)now.nnap)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 3 - barber3.pml:57 - [(napping[0])] (11:0:3 - 1) */
		IfNotBlocked
		reached[2][3] = 1;
		if (!(((int)now.napping[0])))
			continue;
		/* merge: bid = 0(11, 4, 11) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->_7_bid);
		((P2 *)this)->_7_bid = 0;
#ifdef VAR_RANGES
		logval("WaitingRoom:bid", ((int)((P2 *)this)->_7_bid));
#endif
		;
		/* merge: .(goto)(11, 8, 11) */
		reached[2][8] = 1;
		;
		/* merge: nnap = (nnap-1)(11, 9, 11) */
		reached[2][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.nnap);
		now.nnap = (((int)now.nnap)-1);
#ifdef VAR_RANGES
		logval("nnap", ((int)now.nnap));
#endif
		;
		/* merge: napping[bid] = 0(11, 10, 11) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.napping[ Index(((int)((P2 *)this)->_7_bid), 2) ]);
		now.napping[ Index(((P2 *)this)->_7_bid, 2) ] = 0;
#ifdef VAR_RANGES
		logval("napping[WaitingRoom:bid]", ((int)now.napping[ Index(((int)((P2 *)this)->_7_bid), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 12: /* STATE 5 - barber3.pml:59 - [(napping[1])] (11:0:3 - 1) */
		IfNotBlocked
		reached[2][5] = 1;
		if (!(((int)now.napping[1])))
			continue;
		/* merge: bid = 1(11, 6, 11) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->_7_bid);
		((P2 *)this)->_7_bid = 1;
#ifdef VAR_RANGES
		logval("WaitingRoom:bid", ((int)((P2 *)this)->_7_bid));
#endif
		;
		/* merge: .(goto)(11, 8, 11) */
		reached[2][8] = 1;
		;
		/* merge: nnap = (nnap-1)(11, 9, 11) */
		reached[2][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.nnap);
		now.nnap = (((int)now.nnap)-1);
#ifdef VAR_RANGES
		logval("nnap", ((int)now.nnap));
#endif
		;
		/* merge: napping[bid] = 0(11, 10, 11) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.napping[ Index(((int)((P2 *)this)->_7_bid), 2) ]);
		now.napping[ Index(((P2 *)this)->_7_bid, 2) ] = 0;
#ifdef VAR_RANGES
		logval("napping[WaitingRoom:bid]", ((int)now.napping[ Index(((int)((P2 *)this)->_7_bid), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 13: /* STATE 9 - barber3.pml:62 - [nnap = (nnap-1)] (0:11:2 - 3) */
		IfNotBlocked
		reached[2][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nnap);
		now.nnap = (((int)now.nnap)-1);
#ifdef VAR_RANGES
		logval("nnap", ((int)now.nnap));
#endif
		;
		/* merge: napping[bid] = 0(11, 10, 11) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.napping[ Index(((int)((P2 *)this)->_7_bid), 2) ]);
		now.napping[ Index(((P2 *)this)->_7_bid, 2) ] = 0;
#ifdef VAR_RANGES
		logval("napping[WaitingRoom:bid]", ((int)now.napping[ Index(((int)((P2 *)this)->_7_bid), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 14: /* STATE 11 - barber3.pml:64 - [to_barber[bid]!cid] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][11] = 1;
		if (q_len(now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ]);
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_7_cid)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ], 0, ((int)((P2 *)this)->_7_cid), 0, 1);
		{ boq = now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ]; };
		_m = 2; goto P999; /* 0 */
	case 15: /* STATE 13 - barber3.pml:66 - [nwait = (nwait+1)] (0:39:2 - 1) */
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nwait);
		now.nwait = (((int)now.nwait)+1);
#ifdef VAR_RANGES
		logval("nwait", ((int)now.nwait));
#endif
		;
		/* merge: waiting[cid] = 1(39, 14, 39) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.waiting[ Index(((int)((P2 *)this)->_7_cid), 3) ]);
		now.waiting[ Index(((P2 *)this)->_7_cid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("waiting[WaitingRoom:cid]", ((int)now.waiting[ Index(((int)((P2 *)this)->_7_cid), 3) ]));
#endif
		;
		/* merge: printf('C%d sits\\n',cid)(39, 15, 39) */
		reached[2][15] = 1;
		Printf("C%d sits\n", ((int)((P2 *)this)->_7_cid));
		/* merge: .(goto)(0, 17, 39) */
		reached[2][17] = 1;
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 16: /* STATE 18 - barber3.pml:71 - [to_room?next,bid] (0:0:1 - 1) */
		reached[2][18] = 1;
		if (boq != now.to_room) continue;
		if (q_len(now.to_room) == 0) continue;

		XX=1;
		if (2 != qrecv(now.to_room, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->_7_bid);
		;
		((P2 *)this)->_7_bid = qrecv(now.to_room, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("WaitingRoom:bid", ((int)((P2 *)this)->_7_bid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_room);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_7_bid)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.to_room))
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
	case 17: /* STATE 19 - barber3.pml:73 - [((nwait>0))] (25:0:1 - 1) */
		IfNotBlocked
		reached[2][19] = 1;
		if (!((((int)now.nwait)>0)))
			continue;
		/* merge: nextc = ((nextc+1)%3)(0, 20, 25) */
		reached[2][20] = 1;
		(trpt+1)->bup.oval = ((int)now.nextc);
		now.nextc = ((((int)now.nextc)+1)%3);
#ifdef VAR_RANGES
		logval("nextc", ((int)now.nextc));
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[2][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: /* STATE 21 - barber3.pml:76 - [(waiting[nextc])] (30:0:2 - 1) */
		IfNotBlocked
		reached[2][21] = 1;
		if (!(((int)now.waiting[ Index(((int)now.nextc), 3) ])))
			continue;
		/* merge: goto :b3(30, 22, 30) */
		reached[2][22] = 1;
		;
		/* merge: nwait = (nwait-1)(30, 28, 30) */
		reached[2][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nwait);
		now.nwait = (((int)now.nwait)-1);
#ifdef VAR_RANGES
		logval("nwait", ((int)now.nwait));
#endif
		;
		/* merge: waiting[nextc] = 0(30, 29, 30) */
		reached[2][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.waiting[ Index(((int)now.nextc), 3) ]);
		now.waiting[ Index(now.nextc, 3) ] = 0;
#ifdef VAR_RANGES
		logval("waiting[nextc]", ((int)now.waiting[ Index(((int)now.nextc), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 19: /* STATE 24 - barber3.pml:79 - [nextc = ((nextc+1)%3)] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((int)now.nextc);
		now.nextc = ((((int)now.nextc)+1)%3);
#ifdef VAR_RANGES
		logval("nextc", ((int)now.nextc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 28 - barber3.pml:81 - [nwait = (nwait-1)] (0:30:2 - 3) */
		IfNotBlocked
		reached[2][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nwait);
		now.nwait = (((int)now.nwait)-1);
#ifdef VAR_RANGES
		logval("nwait", ((int)now.nwait));
#endif
		;
		/* merge: waiting[nextc] = 0(30, 29, 30) */
		reached[2][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.waiting[ Index(((int)now.nextc), 3) ]);
		now.waiting[ Index(now.nextc, 3) ] = 0;
#ifdef VAR_RANGES
		logval("waiting[nextc]", ((int)now.waiting[ Index(((int)now.nextc), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 21: /* STATE 30 - barber3.pml:83 - [to_barber[bid]!nextc] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][30] = 1;
		if (q_len(now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ]);
		sprintf(simtmp, "%d", ((int)now.nextc)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ], 0, ((int)now.nextc), 0, 1);
		{ boq = now.to_barber[ Index(((int)((P2 *)this)->_7_bid), 2) ]; };
		_m = 2; goto P999; /* 0 */
	case 22: /* STATE 32 - barber3.pml:85 - [nnap = (nnap+1)] (0:39:2 - 1) */
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nnap);
		now.nnap = (((int)now.nnap)+1);
#ifdef VAR_RANGES
		logval("nnap", ((int)now.nnap));
#endif
		;
		/* merge: napping[bid] = 1(39, 33, 39) */
		reached[2][33] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.napping[ Index(((int)((P2 *)this)->_7_bid), 2) ]);
		now.napping[ Index(((P2 *)this)->_7_bid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("napping[WaitingRoom:bid]", ((int)now.napping[ Index(((int)((P2 *)this)->_7_bid), 2) ]));
#endif
		;
		/* merge: printf('B%d naps\\n',bid)(39, 34, 39) */
		reached[2][34] = 1;
		Printf("B%d naps\n", ((int)((P2 *)this)->_7_bid));
		/* merge: .(goto)(0, 36, 39) */
		reached[2][36] = 1;
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 23: /* STATE 37 - barber3.pml:90 - [to_room?complete,cid] (0:0:1 - 1) */
		reached[2][37] = 1;
		if (boq != now.to_room) continue;
		if (q_len(now.to_room) == 0) continue;

		XX=1;
		if (1 != qrecv(now.to_room, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->_7_cid);
		;
		((P2 *)this)->_7_cid = qrecv(now.to_room, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("WaitingRoom:cid", ((int)((P2 *)this)->_7_cid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_room);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_7_cid)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.to_room))
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
	case 24: /* STATE 38 - barber3.pml:91 - [to_cust[cid]!1] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][38] = 1;
		if (q_len(now.to_cust[ Index(((int)((P2 *)this)->_7_cid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.to_cust[ Index(((int)((P2 *)this)->_7_cid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_cust[ Index(((int)((P2 *)this)->_7_cid), 3) ], 0, 1, 0, 1);
		{ boq = now.to_cust[ Index(((int)((P2 *)this)->_7_cid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 25: /* STATE 42 - barber3.pml:93 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][42] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Customer */
	case 26: /* STATE 1 - barber3.pml:39 - [printf('C%d enters shop\\n',id)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		Printf("C%d enters shop\n", ((int)((P1 *)this)->id));
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 2 - barber3.pml:41 - [to_room!enter,id] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (q_len(now.to_room))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.to_room);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_room, 0, 3, ((int)((P1 *)this)->id), 2);
		{ boq = now.to_room; };
		_m = 2; goto P999; /* 0 */
	case 28: /* STATE 3 - barber3.pml:42 - [to_cust[id]?] (0:0:1 - 1) */
		reached[1][3] = 1;
		if (boq != now.to_cust[ Index(((int)((P1 *)this)->id), 3) ]) continue;
		if (q_len(now.to_cust[ Index(((int)((P1 *)this)->id), 3) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = qrecv(now.to_cust[ Index(((int)((P1 *)this)->id), 3) ], XX-1, 0, 0);
		;
		qrecv(now.to_cust[ Index(((int)((P1 *)this)->id), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_cust[ Index(((int)((P1 *)this)->id), 3) ]);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.to_cust[ Index(((int)((P1 *)this)->id), 3) ]))
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
	case 29: /* STATE 4 - barber3.pml:44 - [printf('C%d exits shop\\n',id)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		Printf("C%d exits shop\n", ((int)((P1 *)this)->id));
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 8 - barber3.pml:46 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Barber */
	case 31: /* STATE 1 - barber3.pml:24 - [to_room!next,id] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (q_len(now.to_room))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.to_room);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_room, 0, 2, ((int)((P0 *)this)->id), 2);
		{ boq = now.to_room; };
		_m = 2; goto P999; /* 0 */
	case 32: /* STATE 2 - barber3.pml:25 - [to_barber[id]?cid] (0:0:1 - 1) */
		reached[0][2] = 1;
		if (boq != now.to_barber[ Index(((int)((P0 *)this)->id), 2) ]) continue;
		if (q_len(now.to_barber[ Index(((int)((P0 *)this)->id), 2) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_5_cid);
		;
		((P0 *)this)->_5_cid = qrecv(now.to_barber[ Index(((int)((P0 *)this)->id), 2) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Barber:cid", ((int)((P0 *)this)->_5_cid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_barber[ Index(((int)((P0 *)this)->id), 2) ]);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->_5_cid)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.to_barber[ Index(((int)((P0 *)this)->id), 2) ]))
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
	case 33: /* STATE 3 - barber3.pml:27 - [printf('B%d cuts C%d’s hair\\n',id,cid)] (0:6:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		Printf("B%d cuts C%d’s hair\n", ((int)((P0 *)this)->id), ((int)((P0 *)this)->_5_cid));
		/* merge: printf('B%d done with C%d\\n',id,cid)(6, 5, 6) */
		reached[0][5] = 1;
		Printf("B%d done with C%d\n", ((int)((P0 *)this)->id), ((int)((P0 *)this)->_5_cid));
		_m = 3; goto P999; /* 1 */
	case 34: /* STATE 6 - barber3.pml:31 - [to_room!complete,cid] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (q_len(now.to_room))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.to_room);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->_5_cid)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_room, 0, 1, ((int)((P0 *)this)->_5_cid), 2);
		{ boq = now.to_room; };
		_m = 2; goto P999; /* 0 */
	case 35: /* STATE 10 - barber3.pml:33 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
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

