#define SpinVersion	"Spin Version 6.0.0 -- 5 December 2010"
#define PanSource	"shift-alt-esc2.pml"

#define G_long	4
#define G_int	4
#ifdef WIN64
	#define ONE_L	((unsigned long) 1)
	#define long	long long
#else
	#define ONE_L	(1L)
#endif
char *TrailFile = PanSource; /* default */
char *trailfilename;
#if defined(BFS)
	#ifndef SAFETY
		#define SAFETY
	#endif
	#ifndef XUSAFE
		#define XUSAFE
	#endif
#endif
#ifndef uchar
	#define uchar	unsigned char
#endif
#ifndef uint
	#define uint	unsigned int
#endif
#define DELTA	500
#ifdef MA
	#if NCORE>1 && !defined(SEP_STATE)
	#define SEP_STATE
	#endif
#if MA==1
	#undef MA
	#define MA	100
#endif
#endif
#ifdef W_XPT
	#if W_XPT==1
		#undef W_XPT
		#define W_XPT 1000000
	#endif
#endif
#ifndef NFAIR
	#define NFAIR	2	/* must be >= 2 */
#endif
#define HAS_CODE
#if defined(RANDSTORE) && !defined(RANDSTOR)
	#define RANDSTOR	RANDSTORE
#endif
#define MERGED	1
#if !defined(HAS_LAST) && defined(BCS)
	#define HAS_LAST	1 /* use it, but */
	#ifndef STORE_LAST
		#define NO_LAST	1 /* dont store it */
	#endif
#endif
#if defined(BCS) && defined(BITSTATE)
	#ifndef NO_CTX
		#define STORE_CTX	1
	#endif
#endif
#ifdef NP
	#define HAS_NP	2
	#define VERI	8	/* np_ */
#endif
#if !defined(NOCLAIM) && !defined NP
	#define NCLAIMS	4
	#define VERI	7
#endif
typedef struct S_F_MAP {
	char *fnm; int from; int upto;
} S_F_MAP;

#define nstates7	12	/* L_EventuallyServerBusy */
#define endstate7	11
short src_ln7 [] = {
	  0,  32,  32,  33,  33,  31,  35,  37, 
	 37,  36,  39,  39,   0, };
S_F_MAP src_file7 [] = {
	{ ""-"", 0, 0 },
	{ "_spin_nvr.tmp", 1, 11 },
	{ ""-"", 12, 13 }
};
short *src_claim;
uchar reached7 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   0,   1,   0,   0, };
uchar *loopstate7;

#define nstates6	12	/* L_EventuallyOrder */
#define endstate6	11
short src_ln6 [] = {
	  0,  21,  21,  22,  22,  20,  24,  26, 
	 26,  25,  28,  28,   0, };
S_F_MAP src_file6 [] = {
	{ ""-"", 0, 0 },
	{ "_spin_nvr.tmp", 1, 11 },
	{ ""-"", 12, 13 }
};
uchar reached6 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   0,   1,   0,   0, };
uchar *loopstate6;

#define nstates5	9	/* S_NeverSameOrder */
#define endstate5	8
short src_ln5 [] = {
	  0,  12,  12,  13,  13,  11,  15,  16, 
	 17,   0, };
S_F_MAP src_file5 [] = {
	{ ""-"", 0, 0 },
	{ "_spin_nvr.tmp", 1, 8 },
	{ ""-"", 9, 10 }
};
uchar reached5 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  0,   0, };
uchar *loopstate5;

#define nstates4	9	/* S_CashierCorrectOrder */
#define endstate4	8
short src_ln4 [] = {
	  0,   3,   3,   4,   4,   2,   6,   7, 
	  8,   0, };
S_F_MAP src_file4 [] = {
	{ ""-"", 0, 0 },
	{ "_spin_nvr.tmp", 1, 8 },
	{ ""-"", 9, 10 }
};
uchar reached4 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  0,   0, };
uchar *loopstate4;

#define nstates3	12	/* :init: */
#define endstate3	11
short src_ln3 [] = {
	  0, 152, 153, 154, 156, 157, 158, 159, 
	160, 161, 155, 165,   0, };
S_F_MAP src_file3 [] = {
	{ ""-"", 0, 0 },
	{ "shift-alt-esc2.pml", 1, 11 },
	{ ""-"", 12, 13 }
};
uchar reached3 [] = {
	  0,   0,   0,   0,   1,   0,   0,   0, 
	  0,   0,   0,   0,   0, };
uchar *loopstate3;

#define nstates2	11	/* Server */
#define endstate2	10
short src_ln2 [] = {
	  0, 128, 131, 132, 134, 137, 138, 126, 
	143, 126, 143,   0, };
S_F_MAP src_file2 [] = {
	{ ""-"", 0, 0 },
	{ "shift-alt-esc2.pml", 1, 10 },
	{ ""-"", 11, 12 }
};
uchar reached2 [] = {
	  0,   1,   0,   0,   0,   0,   0,   0, 
	  1,   1,   0,   0, };
uchar *loopstate2;

#define nstates1	19	/* Cashier */
#define endstate1	18
short src_ln1 [] = {
	  0,  90,  95,  95,  94,  97,  93, 100, 
	 93, 100, 103, 104, 105, 108, 109,  87, 
	114,  87, 114,   0, };
S_F_MAP src_file1 [] = {
	{ ""-"", 0, 0 },
	{ "shift-alt-esc2.pml", 1, 18 },
	{ ""-"", 19, 20 }
};
uchar reached1 [] = {
	  0,   1,   1,   1,   1,   1,   0,   1, 
	  1,   0,   0,   0,   0,   0,   0,   0, 
	  1,   1,   0,   0, };
uchar *loopstate1;

#define nstates0	13	/* Customer */
#define endstate0	12
short src_ln0 [] = {
	  0,  54,  57,  60,  63,  64,  67,  68, 
	 69,  51,  73,  51,  73,   0, };
S_F_MAP src_file0 [] = {
	{ ""-"", 0, 0 },
	{ "shift-alt-esc2.pml", 1, 12 },
	{ ""-"", 13, 14 }
};
uchar reached0 [] = {
	  0,   1,   0,   0,   0,   0,   0,   0, 
	  0,   0,   1,   1,   0,   0, };
uchar *loopstate0;
struct {
	int tp; short *src;
} src_all[] = {
	{ 7, &src_ln7[0] },
	{ 6, &src_ln6[0] },
	{ 5, &src_ln5[0] },
	{ 4, &src_ln4[0] },
	{ 3, &src_ln3[0] },
	{ 2, &src_ln2[0] },
	{ 1, &src_ln1[0] },
	{ 0, &src_ln0[0] },
	{ 0, (short *) 0 }
};
S_F_MAP *flref[] = {
	src_file7,
	src_file6,
	src_file5,
	src_file4,
	src_file3,
	src_file2,
	src_file1,
	src_file0 
};
struct {
	char *c; char *t;
} code_lookup[] = {
	{ (char *) 0, "" }
};
#define _T5	44
#define _T2	45
#define T_ID	unsigned char
#define SYNC	4
#define ASYNC	0

#ifndef NCORE
	#ifdef DUAL_CORE
		#define NCORE	2
	#elif QUAD_CORE
		#define NCORE	4
	#else
		#define NCORE	1
	#endif
#endif
char *procname[] = {
   "Customer",
   "Cashier",
   "Server",
   ":init:",
   "S_CashierCorrectOrder",
   "S_NeverSameOrder",
   "L_EventuallyOrder",
   "L_EventuallyServerBusy",
   ":np_:",
};

enum btypes { NONE=0, N_CLAIM=1, I_PROC=2, A_PROC=3, P_PROC=4, E_TRACE=5, N_TRACE=6 };
int Btypes[] = {
   4,	/* Customer */
   4,	/* Cashier */
   4,	/* Server */
   2,	/* :init: */
   1,	/* S_CashierCorrectOrder */
   1,	/* S_NeverSameOrder */
   1,	/* L_EventuallyOrder */
   1,	/* L_EventuallyServerBusy */
   0	/* :np_: */
};

typedef struct P7 { /* L_EventuallyServerBusy */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
} P7;
#define Air7	(sizeof(P7) - 3)
typedef struct P6 { /* L_EventuallyOrder */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
} P6;
#define Air6	(sizeof(P6) - 3)
typedef struct P5 { /* S_NeverSameOrder */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
} P5;
#define Air5	(sizeof(P5) - 3)
typedef struct P4 { /* S_CashierCorrectOrder */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
} P4;
#define Air4	(sizeof(P4) - 3)
#define Pinit	((P3 *)this)
typedef struct P3 { /* :init: */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
} P3;
#define Air3	(sizeof(P3) - 3)
#define PServer	((P2 *)this)
typedef struct P2 { /* Server */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
	uchar id;
	uchar _8_customer;
	uchar _8_order;
} P2;
#define Air2	(sizeof(P2) - Offsetof(P2, _8_order) - 1*sizeof(uchar))
#define PCashier	((P1 *)this)
typedef struct P1 { /* Cashier */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
	uchar _7_current_customer;
	uchar _7_order;
} P1;
#define Air1	(sizeof(P1) - Offsetof(P1, _7_order) - 1*sizeof(uchar))
#define PCustomer	((P0 *)this)
typedef struct P0 { /* Customer */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
	uchar id;
	uchar favorite;
	uchar _6_order;
} P0;
#define Air0	(sizeof(P0) - Offsetof(P0, _6_order) - 1*sizeof(uchar))
typedef struct P8 { /* np_ */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 6; /* state    */
} P8;
#define Air8	(sizeof(P8) - 3)

#ifndef NOCLAIM
	#undef VERI
	#define VERI	9
	#define Pclaim	P9

typedef struct P9 {
	unsigned _pid : 8; /* always zero */
	unsigned _t   : 5; /* active-claim type  */
	unsigned _p   : 6; /* active-claim state */
	unsigned _n   : 3; /* active-claim index */
	uchar c_cur[NCLAIMS]; /* claim-states */
} P9;
uchar spin_c_typ[NCLAIMS]; /* claim-types */
	#define Air9	(0)

#endif
#if defined(BFS) && defined(REACH)
	#undef REACH
#endif
#ifdef VERI
	#define BASE	1
#else
	#define BASE	0
#endif
typedef struct Trans {
	short atom;	/* if &2 = atomic trans; if &8 local */
#ifdef HAS_UNLESS
	short escp[HAS_UNLESS];	/* lists the escape states */
	short e_trans;	/* if set, this is an escp-trans */
#endif
	short tpe[2];	/* class of operation (for reduction) */
	short qu[6];	/* for conditional selections: qid's  */
	uchar ty[6];	/* ditto: type's */
#ifdef NIBIS
	short om;	/* completion status of preselects */
#endif
	char *tp;	/* src txt of statement */
	int st;		/* the nextstate */
	int t_id;	/* transition id, unique within proc */
	int forw;	/* index forward transition */
	int back;	/* index return  transition */
	struct Trans *nxt;
} Trans;

#define qptr(x)	(((uchar *)&now)+(int)q_offset[x])
#define pptr(x)	(((uchar *)&now)+(int)proc_offset[x])
extern uchar *Pptr(int);
#define q_sz(x)	(((Q0 *)qptr(x))->Qlen)

#ifndef VECTORSZ
	#define VECTORSZ	1024           /* sv   size in bytes */
#endif

#define WS	4 /* word size in bytes */
#ifdef VERBOSE
	#ifndef CHECK
		#define CHECK
	#endif
	#ifndef DEBUG
		#define DEBUG
	#endif
#endif
#ifdef SAFETY
	#ifndef NOFAIR
		#define NOFAIR
	#endif
#endif
#ifdef NOREDUCE
	#ifndef XUSAFE
		#define XUSAFE
	#endif
	#if !defined(SAFETY) && !defined(MA)
		#define FULLSTACK
	#endif
#else
	#ifdef BITSTATE
		#if defined(SAFETY) && !defined(HASH64)
			#define CNTRSTACK
		#else
			#define FULLSTACK
		#endif
	#else
		#define FULLSTACK
	#endif
#endif
#ifdef BITSTATE
	#ifndef NOCOMP
		#define NOCOMP
	#endif
	#if !defined(LC) && defined(SC)
		#define LC
	#endif
#endif
#if defined(COLLAPSE2) || defined(COLLAPSE3) || defined(COLLAPSE4)
	/* accept the above for backward compatibility */
	#define COLLAPSE
#endif
#ifdef HC
	#undef HC
	#define HC4
#endif
#ifdef HC0
	#define HC	0
#endif
#ifdef HC1
	#define HC	1
#endif
#ifdef HC2
	#define HC	2
#endif
#ifdef HC3
	#define HC	3
#endif
#ifdef HC4
	#define HC	4
#endif
#ifdef COLLAPSE
	#if NCORE>1 && !defined(SEP_STATE)
		unsigned long *ncomps;	/* in shared memory */
	#else
		unsigned long ncomps[256+2];
	#endif
#endif
#define MAXQ   	255
#define MAXPROC	255

typedef struct Stack  {	 /* for queues and processes */
#if VECTORSZ>32000
	int o_delta;
	int o_offset;
	int o_skip;
	int o_delqs;
#else
	short o_delta;
	short o_offset;
	short o_skip;
	short o_delqs;
#endif
	short o_boq;
#ifndef XUSAFE
	char *o_name;
#endif
	char *body;
	struct Stack *nxt;
	struct Stack *lst;
} Stack;

typedef struct Svtack { /* for complete state vector */
#if VECTORSZ>32000
	int o_delta;
	int m_delta;
#else
	short o_delta;	 /* current size of frame */
	short m_delta;	 /* maximum size of frame */
#endif
#if SYNC
	short o_boq;
#endif
#define StackSize	(WS)
	char *body;
	struct Svtack *nxt;
	struct Svtack *lst;
} Svtack;

Trans ***trans;	/* 1 ptr per state per proctype */

struct H_el *Lstate;
int depthfound = -1;	/* loop detection */
#if VECTORSZ>32000
	int proc_offset[MAXPROC];
	int q_offset[MAXQ];
#else
	short proc_offset[MAXPROC];
	short q_offset[MAXQ];
#endif
uchar proc_skip[MAXPROC];
uchar q_skip[MAXQ];
unsigned long  vsize;	/* vector size in bytes */
#ifdef SVDUMP
	int vprefix=0, svfd;	/* runtime option -pN */
#endif
char *tprefix = "trail";	/* runtime option -tsuffix */
short boq = -1;		/* blocked_on_queue status */
typedef struct State {
	uchar _nr_pr;
	uchar _nr_qs;
	uchar   _a_t;	/* cycle detection */
#ifndef NOFAIR
	uchar   _cnt[NFAIR];	/* counters, weak fairness */
#endif
#ifndef NOVSZ
#if VECTORSZ<65536
	unsigned short _vsz;
#else
	unsigned long  _vsz;
#endif
#endif
#ifdef HAS_LAST
	uchar  _last;	/* pid executed in last step */
#endif
#if defined(BITSTATE) && defined(BCS) && defined(STORE_CTX)
	uchar  _ctx;	/* nr of context switches so far */
#endif
#ifdef EVENT_TRACE
	#if nstates_event<256
		uchar _event;
	#else
		unsigned short _event;
	#endif
#endif
	uchar numCustWait;
	uchar currentCust;
	uchar cust[2];
	uchar cust_order;
	uchar cash_order;
	uchar sever_order;
	uchar server_to_cust[3];
	uchar favorite_foods[3];
	uchar currentOrder;
	uchar sv[VECTORSZ];
} State;

#define HAS_TRACK	0
int _; /* a predefined write-only variable */

#define FORWARD_MOVES	"pan.m"
#define REVERSE_MOVES	"pan.b"
#define TRANSITIONS	"pan.t"
#define _NP_	8
uchar reached8[3];  /* np_ */
uchar *loopstate8;  /* np_ */
#define nstates8	3 /* np_ */
#define endstate8	2 /* np_ */

#define start8	0 /* np_ */
#define start7	5
#define start6	5
#define start5	5
#define start4	5
#define start3	1
#define start2	7
#define start1	15
#define start0	9
#ifdef NP
	#define ACCEPT_LAB	1 /* at least 1 in np_ */
#else
	#define ACCEPT_LAB	4 /* user-defined accept labels */
#endif
#ifdef MEMCNT
	#ifdef MEMLIM
		#warning -DMEMLIM takes precedence over -DMEMCNT
		#undef MEMCNT
	#else
		#if MEMCNT<20
			#warning using minimal value -DMEMCNT=20 (=1MB)
			#define MEMLIM	(1)
			#undef MEMCNT
		#else
			#if MEMCNT==20
				#define MEMLIM	(1)
				#undef MEMCNT
			#else
			 #if MEMCNT>=50
				#error excessive value for MEMCNT
			 #else
				#define MEMLIM	(1<<(MEMCNT-20))
			 #endif
			#endif
		#endif
	#endif
#endif
#if NCORE>1 && !defined(MEMLIM)
	#define MEMLIM	(2048)	/* need a default, using 2 GB */
#endif
#define PROG_LAB	0 /* progress labels */
uchar *accpstate[9];
uchar *progstate[9];
uchar *loopstate[9];
uchar *reached[9];
uchar *stopstate[9];
uchar *visstate[9];
short *mapstate[9];
#ifdef HAS_CODE
	int NrStates[9];
#endif
#define NQS	6
short q_flds[7];
short q_max[7];
typedef struct Q6 {
	uchar Qlen;	/* q_size */
	uchar _t;	/* q_type */
	struct {
		uchar fld0;
	} contents[1];
} Q6;
typedef struct Q5 {
	uchar Qlen;	/* q_size */
	uchar _t;	/* q_type */
	struct {
		uchar fld0;
	} contents[1];
} Q5;
typedef struct Q4 {
	uchar Qlen;	/* q_size */
	uchar _t;	/* q_type */
	struct {
		uchar fld0;
	} contents[1];
} Q4;
typedef struct Q3 {
	uchar Qlen;	/* q_size */
	uchar _t;	/* q_type */
	struct {
		uchar fld0;
		uchar fld1;
	} contents[1];
} Q3;
typedef struct Q2 {
	uchar Qlen;	/* q_size */
	uchar _t;	/* q_type */
	struct {
		uchar fld0;
	} contents[1];
} Q2;
typedef struct Q1 {
	uchar Qlen;	/* q_size */
	uchar _t;	/* q_type */
	struct {
		uchar fld0;
		uchar fld1;
	} contents[1];
} Q1;
typedef struct Q0 {	/* generic q */
	uchar Qlen;	/* q_size */
	uchar _t;
} Q0;

/** function prototypes **/
char *emalloc(unsigned long);
char *Malloc(unsigned long);
int Boundcheck(int, int, int, int, Trans *);
int addqueue(int, int);
/* int atoi(char *); */
/* int abort(void); */
int close(int);
int delproc(int, int);
int endstate(void);
int hstore(char *, int);
#ifdef MA
int gstore(char *, int, uchar);
#endif
int q_cond(short, Trans *);
int q_full(int);
int q_len(int);
int q_zero(int);
int qrecv(int, int, int, int);
int unsend(int);
/* void *sbrk(int); */
void Uerror(char *);
void spin_assert(int, char *, int, int, Trans *);
void c_chandump(int);
void c_globals(void);
void c_locals(int, int);
void checkcycles(void);
void crack(int, int, Trans *, short *);
void d_sfh(const char *, int);
void sfh(const char *, int);
void d_hash(uchar *, int);
void s_hash(uchar *, int);
void r_hash(uchar *, int);
void delq(int);
void dot_crack(int, int, Trans *);
void do_reach(void);
void pan_exit(int);
void exit(int);
void hinit(void);
void imed(Trans *, int, int, int);
void new_state(void);
void p_restor(int);
void putpeg(int, int);
void putrail(void);
void q_restor(void);
void retrans(int, int, int, short *, uchar *, uchar *);
void settable(void);
void setq_claim(int, int, char *, int, char *);
void sv_restor(void);
void sv_save(void);
void tagtable(int, int, int, short *, uchar *);
void do_dfs(int, int, int, short *, uchar *, uchar *);
void uerror(char *);
void unrecv(int, int, int, int, int);
void usage(FILE *);
void wrap_stats(void);
#if defined(FULLSTACK) && defined(BITSTATE)
	int  onstack_now(void);
	void onstack_init(void);
	void onstack_put(void);
	void onstack_zap(void);
#endif
#ifndef XUSAFE
	int q_S_check(int, int);
	int q_R_check(int, int);
	uchar q_claim[MAXQ+1];
	char *q_name[MAXQ+1];
	char *p_name[MAXPROC+1];
#endif
void qsend(int, int, int, int, int);
#define Addproc(x)	addproc(x, 0, 0)
#define LOCAL	1
#define Q_FULL_F	2
#define Q_EMPT_F	3
#define Q_EMPT_T	4
#define Q_FULL_T	5
#define TIMEOUT_F	6
#define GLOBAL	7
#define BAD	8
#define ALPHA_F	9
#define NTRANS	46
#ifdef PEG
	long peg[NTRANS];
#endif
void select_claim(int);
unsigned char Is_Recv[89];
