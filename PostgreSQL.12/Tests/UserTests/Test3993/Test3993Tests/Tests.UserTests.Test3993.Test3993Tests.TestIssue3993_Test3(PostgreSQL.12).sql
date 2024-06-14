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
SET     @:p1 = 145820000000
DECLARE @:p2 Interval -- Object
SET     @:p2 = 00:00:00

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
('2020-02-29 17:54:55.123'::timestamp,'0001-01-01'::date,NULL,:p1,NULL,:p2,NULL,NULL)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
WHERE
	Floor(Extract(hour From (t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond')))::Int = 13
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
WHERE
	Floor(Extract(minute From (t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond')))::Int = 51
LIMIT 1

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
	t1."Status",
	t1."NotificationDateTime"
FROM
	(
		SELECT
			Floor(Extract(second From (x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond')))::Int as "Second_1",
			x."StartDateTime",
			x."StartDateTime2",
			x."EndDateTime",
			x."PreNotification",
			x."PreNotification2",
			x."PreNotification3",
			x."StrField",
			x."Status",
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime"
		FROM
			"Common_Topology_Locations" x
	) t1
WHERE
	t1."Second_1" >= 52 AND t1."Second_1" <= 54
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

