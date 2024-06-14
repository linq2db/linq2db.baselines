BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
LIMIT 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
	Floor(Extract(second From (t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond')))::Int = 53
LIMIT 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

