BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @StartDateTime Timestamp -- DateTime2
SET     @StartDateTime = '2020-02-29 17:54:55.123'::timestamp
DECLARE @StartDateTime2 Timestamp -- DateTime2
SET     @StartDateTime2 = '2020-02-29 17:54:55.123'::timestamp
DECLARE @EndDateTime Timestamp -- DateTime2
SET     @EndDateTime = '2020-02-29 21:54:55.123'::timestamp
DECLARE @PreNotification Bigint -- Int64
SET     @PreNotification = 200000000000
DECLARE @PreNotification2 Interval -- Object
SET     @PreNotification2 = 05:33:20
DECLARE @PreNotification3 Interval -- Object
SET     @PreNotification3 = 05:33:20
DECLARE @StrField Timestamp -- DateTime2
SET     @StrField = '2020-02-29'::date
DECLARE @Status Text -- String
SET     @Status = NULL

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
(
	:StartDateTime,
	:StartDateTime2,
	:EndDateTime,
	:PreNotification,
	:PreNotification2,
	:PreNotification3,
	:StrField,
	:Status
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
	Cast(Floor(Extract(year from x."StartDateTime2")) as int) = 2023

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 00:05:00
DECLARE @UtcNow Timestamp -- DateTime2
SET     @UtcNow = '2024-02-18 01:44:15.447'::timestamp

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 36500.00:00:00
DECLARE @UtcNow Timestamp -- DateTime2
SET     @UtcNow = '2024-02-18 01:44:15.451'::timestamp

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."PreNotification"
FROM
	"Common_Topology_Locations" x
WHERE
	Cast((x."PreNotification" / 10000000) as Float) < Cast((x."PreNotification" / 10000) as Float)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (-1 * (t."PreNotification" / 10000)) * Interval '1 Millisecond' < :DateTimeUtc

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (-1 * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' < :DateTimeUtc

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + t."PreNotification3" * -1 < :DateTimeUtc

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (t."PreNotification" * -1 / 10) * Interval '1 Microsecond' < :DateTimeUtc

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (t."PreNotification" / 10) * Interval '1 Microsecond' < :DateTimeUtc

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime2" + (t."PreNotification" * -1 / 10) * Interval '1 Microsecond' < :DateTimeUtc

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime2" + t."PreNotification3" * -1 < :DateTimeUtc

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeUtc Timestamp -- DateTime2
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."StartDateTime",
	t."PreNotification3"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + t."PreNotification3" * -1 < :DateTimeUtc

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."EndDateTime",
	x."StartDateTime"
FROM
	"Common_Topology_Locations" x

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 05:00:00

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	(t."EndDateTime"::timestamp - t."StartDateTime"::timestamp) < :p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	Cast(((extract(second from (t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)) + extract(minute from (t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)) * 60 + extract(hour from (t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)) * 3600 + extract(day from (t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)) * 86400) / 3600) as Float) < 5

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 02:00:00

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	(t."EndDateTime"::timestamp - t."StartDateTime"::timestamp) < :p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	Cast(((extract(second from (t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)) + extract(minute from (t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)) * 60 + extract(hour from (t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)) * 3600 + extract(day from (t."EndDateTime"::timestamp - t."StartDateTime"::timestamp)) * 86400) / 3600) as Float) < 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

