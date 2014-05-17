/*
 * Copyright (c) 2010 Broadcom Corporation
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
 * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
 * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
 * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#ifndef	_BRCMU_UTILS_H_
#define	_BRCMU_UTILS_H_

#include <linux/skbuff.h>

/*
 * Spin at most 'us' microseconds while 'exp' is true.
 * Caller should explicitly test 'exp' when this completes
 * and take appropriate error action if 'exp' is still true.
 */
#define SPINWAIT(exp, us) { \
	uint countdown = (us) + 9; \
	while ((exp) && (countdown >= 10)) {\
		udelay(10); \
		countdown -= 10; \
	} \
}

/* osl multi-precedence packet queue */
#define PKTQ_LEN_DEFAULT        128	/* Max 128 packets */
#define PKTQ_MAX_PREC           16	/* Maximum precedence levels */

#define BCME_STRLEN		64	/* Max string length for BCM errors */

/* the largest reasonable packet buffer driver uses for ethernet MTU in bytes */
#define	PKTBUFSZ	2048

#ifndef setbit
#ifndef NBBY			/* the BSD family defines NBBY */
#define	NBBY	8		/* 8 bits per byte */
#endif				/* #ifndef NBBY */
#define	setbit(a, i)	(((u8 *)a)[(i)/NBBY] |= 1<<((i)%NBBY))
#define	clrbit(a, i)	(((u8 *)a)[(i)/NBBY] &= ~(1<<((i)%NBBY)))
#define	isset(a, i)	(((const u8 *)a)[(i)/NBBY] & (1<<((i)%NBBY)))
#define	isclr(a, i)	((((const u8 *)a)[(i)/NBBY] & (1<<((i)%NBBY))) == 0)
#endif				/* setbit */

#define	NBITS(type)	(sizeof(type) * 8)
#define NBITVAL(nbits)	(1 << (nbits))
#define MAXBITVAL(nbits)	((1 << (nbits)) - 1)
#define	NBITMASK(nbits)	MAXBITVAL(nbits)
#define MAXNBVAL(nbyte)	MAXBITVAL((nbyte) * 8)

/* crc defines */
#define CRC16_INIT_VALUE 0xffff	/* Initial CRC16 checksum value */
#define CRC16_GOOD_VALUE 0xf0b8	/* Good final CRC16 checksum value */

/* 18-bytes of Ethernet address buffer length */
#define ETHER_ADDR_STR_LEN	18

struct pktq_prec {
	struct sk_buff *head;	/* first packet to dequeue */
	struct sk_buff *tail;	/* last packet to dequeue */
	u16 len;		/* number of queued packets */
	u16 max;		/* maximum number of queued packets */
};

/* multi-priority pkt queue */
struct pktq {
	u16 num_prec;	/* number of precedences in use */
	u16 hi_prec;	/* rapid dequeue hint (>= highest non-empty prec) */
	u16 max;	/* total max packets */
	u16 len;	/* total number of packets */
	/*
	 * q array must be last since # of elements can be either
	 * PKTQ_MAX_PREC or 1
	 */
	struct pktq_prec q[PKTQ_MAX_PREC];
};

/* operations on a specific precedence in packet queue */

static inline int pktq_plen(struct pktq *pq, int prec)
{
	return pq->q[prec].len;
}

static inline int pktq_pavail(struct pktq *pq, int prec)
{
	return pq->q[prec].max - pq->q[prec].len;
}

static inline bool pktq_pfull(struct pktq *pq, int prec)
{
	return pq->q[prec].len >= pq->q[prec].max;
}

static inline bool pktq_pempty(struct pktq *pq, int prec)
{
	return pq->q[prec].len == 0;
}

static inline struct sk_buff *pktq_ppeek(struct pktq *pq, int prec)
{
	return pq->q[prec].head;
}

static inline struct sk_buff *pktq_ppeek_tail(struct pktq *pq, int prec)
{
	return pq->q[prec].tail;
}

extern struct sk_buff *brcmu_pktq_penq(struct pktq *pq, int prec,
				 struct sk_buff *p);
extern struct sk_buff *brcmu_pktq_penq_head(struct pktq *pq, int prec,
				      struct sk_buff *p);
extern struct sk_buff *brcmu_pktq_pdeq(struct pktq *pq, int prec);
extern struct sk_buff *brcmu_pktq_pdeq_tail(struct pktq *pq, int prec);

/* packet primitives */
extern struct sk_buff *brcmu_pkt_buf_get_skb(uint len);
extern void brcmu_pkt_buf_free_skb(struct sk_buff *skb);

/* Empty the queue at particular precedence level */
/* callback function fn(pkt, arg) returns true if pkt belongs to if */
extern void brcmu_pktq_pflush(struct pktq *pq, int prec,
	bool dir, bool (*fn)(struct sk_buff *, void *), void *arg);

/* operations on a set of precedences in packet queue */

extern int brcmu_pktq_mlen(struct pktq *pq, uint prec_bmp);
extern struct sk_buff *brcmu_pktq_mdeq(struct pktq *pq, uint prec_bmp,
	int *prec_out);

/* operations on packet queue as a whole */

static inline int pktq_len(struct pktq *pq)
{
	return (int)pq->len;
}

static inline int pktq_max(struct pktq *pq)
{
	return (int)pq->max;
}

static inline int pktq_avail(struct pktq *pq)
{
	return (int)(pq->max - pq->len);
}

static inline bool pktq_full(struct pktq *pq)
{
	return pq->len >= pq->max;
}

static inline bool pktq_empty(struct pktq *pq)
{
	return pq->len == 0;
}

extern void brcmu_pktq_init(struct pktq *pq, int num_prec, int max_len);
/* prec_out may be NULL if caller is not interested in return value */
extern struct sk_buff *brcmu_pktq_peek_tail(struct pktq *pq, int *prec_out);
extern void brcmu_pktq_flush(struct pktq *pq, bool dir,
		bool (*fn)(struct sk_buff *, void *), void *arg);

/* externs */
/* packet */
extern uint brcmu_pktfrombuf(struct sk_buff *p,
	uint offset, int len, unsigned char *buf);
extern uint brcmu_pkttotlen(struct sk_buff *p);

/* ip address */
struct ipv4_addr;

#ifdef BCMDBG
extern void brcmu_prpkt(const char *msg, struct sk_buff *p0);
#else
#define brcmu_prpkt(a, b)
#endif				/* BCMDBG */

/* externs */
/* format/print */
#if defined(BCMDBG)
extern int brcmu_format_hex(char *str, const void *bytes, int len);
#endif

#endif				/* _BRCMU_UTILS_H_ */
