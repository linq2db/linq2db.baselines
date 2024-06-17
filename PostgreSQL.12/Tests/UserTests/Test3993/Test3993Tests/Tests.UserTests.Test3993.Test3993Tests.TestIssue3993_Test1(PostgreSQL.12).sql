BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Common_Topology_Locations"
(
	"StartDateTime"    TimeStamp     NULL,
	"StartDateTime2"   TimeStamp NOT NULL,
	"EndDateTime"      TimeStamp     NULL,
	"PreNotification"  BigInt        NULL,
	"PreNotification2" interval      NULL,
	"PreNotification3" interval  NOT NULL,
	"StrField"         TimeStamp     NULL,
	"Status"           text          NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @:p1 Bigint -- Int64
SET     @:p1 = 200000000000
DECLARE @:p2 Interval -- Object
SET     @:p2 = 05:33:20
DECLARE @:p3 Interval -- Object
SET     @:p3 = 05:33:20

INSERT INTO "Common_Topology_Locations"
(
	"StartDateTime",
	"StartDateTime2",
	"EndDateTime",
	"PreNotification",
	"PreNotification2",
	"PreNotification3",
	"StrField",
	"Status"
)
VALUES
('2020-02-29 17:54:55.123'::timestamp,'2020-02-29 17:54:55.123'::timestamp,'2020-02-29 21:54:55.123'::timestamp,:p1,:p2,:p3,'2020-02-29'::date,NULL)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 00:05:00
DECLARE @UtcNow Timestamp -- DateTime2
SET     @UtcNow = '2024-06-17 00:04:15.522'::timestamp

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
	x."StartDateTime2" + :p > :UtcNow

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 36500.00:00:00
DECLARE @UtcNow Timestamp -- DateTime2
SET     @UtcNow = '2024-06-17 00:04:15.527'::timestamp

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
	x."StartDateTime2" + :p > :UtcNow

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x_1.t1,
	x_1.t2
FROM
	(
		SELECT
			(x."PreNotification" / 10000000)::Float as t2,
			(x."PreNotification" / 10000)::Float as t1
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1.t2 < x_1.t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTime4Utc Timestamp -- DateTime2
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x_1."NotificationDateTime_1",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" + (-1 * (x."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			x."StartDateTime" as "NotificationDateTime_1",
			x."PreNotification",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			Floor(Extract(day From x."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime" < :DateTime4Utc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTime4Utc Timestamp -- DateTime2
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x_1."NotificationDateTime2_1",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			x."StartDateTime" as "NotificationDateTime2_1",
			x."PreNotification",
			x."StartDateTime" + (-1 * (x."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			Floor(Extract(day From x."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime2" < :DateTime4Utc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTime4Utc Timestamp -- DateTime2
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1 * (x."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			Floor(Extract(day From x."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime4" < :DateTime4Utc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTime4Utc Timestamp -- DateTime2
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1 * (x."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			Floor(Extract(day From x."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime5" < :DateTime4Utc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTime4Utc Timestamp -- DateTime2
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" + (x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1 * (x."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			x."StartDateTime2" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			Floor(Extract(day From x."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime6" < :DateTime4Utc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTime4Utc Timestamp -- DateTime2
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime2" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1 * (x."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			Floor(Extract(day From x."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime7" < :DateTime4Utc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTime4Utc Timestamp -- DateTime2
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1 * (x."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			x."StartDateTime" + (-1 * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			Floor(Extract(day From x."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime8" < :DateTime4Utc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x_1."NotificationDateTime4"
FROM
	(
		SELECT
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime4" < :DateTimeUtc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	(t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	(x."EndDateTime"::timestamp - x."StartDateTime"::timestamp)
FROM
	"Common_Topology_Locations" x

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 05:00:00

SELECT
	x_1.diff
FROM
	(
		SELECT
			(x."EndDateTime"::timestamp - x."StartDateTime"::timestamp) as diff
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1.diff < :p

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x_1."Value_1"
FROM
	(
		SELECT
			(x."EndDateTime"::timestamp - x."StartDateTime"::timestamp) as "Value_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	((extract(second from x_1."Value_1") + extract(minute from x_1."Value_1") * 60 + extract(hour from x_1."Value_1") * 3600 + extract(day from x_1."Value_1") * 86400) / 3600)::Float < 5

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 02:00:00

SELECT
	x_1.diff
FROM
	(
		SELECT
			(x."EndDateTime"::timestamp - x."StartDateTime"::timestamp) as diff
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1.diff < :p

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x_1."Value_1"
FROM
	(
		SELECT
			(x."EndDateTime"::timestamp - x."StartDateTime"::timestamp) as "Value_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	((extract(second from x_1."Value_1") + extract(minute from x_1."Value_1") * 60 + extract(hour from x_1."Value_1") * 3600 + extract(day from x_1."Value_1") * 86400) / 3600)::Float < 2

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

