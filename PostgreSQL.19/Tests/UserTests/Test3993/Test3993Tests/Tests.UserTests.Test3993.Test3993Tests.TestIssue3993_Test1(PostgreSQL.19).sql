-- PostgreSQL.19 PostgreSQL12
SELECT
	t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."StartDateTime",
	t1."StartDateTime2",
	t1."EndDateTime",
	t1."PreNotification",
	t1."PreNotification2",
	t1."PreNotification3",
	t1."StrField",
	t1."Status"
FROM
	"Common_Topology_Locations" t1

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."StartDateTime",
	x."StartDateTime2",
	x."EndDateTime",
	x."PreNotification",
	x."PreNotification2",
	x."PreNotification3",
	x."StrField",
	x."Status"
FROM
	"Common_Topology_Locations" x
WHERE
	Floor(Extract(year From x."StartDateTime2"))::Int = 2023

-- PostgreSQL.19 PostgreSQL12
DECLARE @p Interval -- Object
SET     @p = 00:05:00

SELECT
	x."StartDateTime",
	x."StartDateTime2",
	x."EndDateTime",
	x."PreNotification",
	x."PreNotification2",
	x."PreNotification3",
	x."StrField",
	x."Status"
FROM
	"Common_Topology_Locations" x
WHERE
	x."StartDateTime2" + :p > timezone('UTC', now())

-- PostgreSQL.19 PostgreSQL12
DECLARE @p Interval -- Object
SET     @p = 36500.00:00:00

SELECT
	x."StartDateTime",
	x."StartDateTime2",
	x."EndDateTime",
	x."PreNotification",
	x."PreNotification2",
	x."PreNotification3",
	x."StrField",
	x."Status"
FROM
	"Common_Topology_Locations" x
WHERE
	x."StartDateTime2" + :p > timezone('UTC', now())

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."PreNotification"::BigInt::Float / 10000,
	x."PreNotification"::BigInt::Float / 10000000
FROM
	"Common_Topology_Locations" x
WHERE
	x."PreNotification"::BigInt::Float / 10000000 < x."PreNotification"::BigInt::Float / 10000

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + (-1 * (t."PreNotification"::BigInt::Float / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification2")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification3")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + ((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime" < '2020-02-29 17:54:55.123'::timestamp

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification2")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification"::BigInt::Float / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification3")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + ((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime2" < '2020-02-29 17:54:55.123'::timestamp

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification"::BigInt::Float / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification2")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification3")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + ((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime4" < '2020-02-29 17:54:55.123'::timestamp

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification"::BigInt::Float / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification2")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification3")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + ((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime5" < '2020-02-29 17:54:55.123'::timestamp

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + ((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification"::BigInt::Float / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification2")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification3")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime2" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime6" < '2020-02-29 17:54:55.123'::timestamp

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime2" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification"::BigInt::Float / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification2")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification3")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + ((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime7" < '2020-02-29 17:54:55.123'::timestamp

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification"::BigInt::Float / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification2")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * (EXTRACT(EPOCH FROM t."PreNotification3")) * 1000.0) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + ((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime8" < '2020-02-29 17:54:55.123'::timestamp

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."NotificationDateTime4"
FROM
	(
		SELECT
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime4" < '2020-02-29 17:54:55.123'::timestamp

-- PostgreSQL.19 PostgreSQL12
SELECT
	t."EndDateTime" - t."StartDateTime"
FROM
	"Common_Topology_Locations" t

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."EndDateTime" - x."StartDateTime"
FROM
	"Common_Topology_Locations" x

-- PostgreSQL.19 PostgreSQL12
DECLARE @p Interval -- Object
SET     @p = 05:00:00

SELECT
	x.diff
FROM
	(
		SELECT
			t."EndDateTime" - t."StartDateTime" as diff
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x.diff < :p

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."EndDateTime" - x."StartDateTime"
FROM
	"Common_Topology_Locations" x
WHERE
	(EXTRACT(EPOCH FROM (x."EndDateTime" - x."StartDateTime"))) / 3600.0 < 5

-- PostgreSQL.19 PostgreSQL12
DECLARE @p Interval -- Object
SET     @p = 02:00:00

SELECT
	x.diff
FROM
	(
		SELECT
			t."EndDateTime" - t."StartDateTime" as diff
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x.diff < :p

-- PostgreSQL.19 PostgreSQL12
SELECT
	x."EndDateTime" - x."StartDateTime"
FROM
	"Common_Topology_Locations" x
WHERE
	(EXTRACT(EPOCH FROM (x."EndDateTime" - x."StartDateTime"))) / 3600.0 < 2

