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
DECLARE @:p1 Bigint -- Int64
SET     @:p1 = 200000000000
DECLARE @:p2 Interval -- Object
SET     @:p2 = 05:33:20
DECLARE @:p3 Interval -- Object
SET     @:p3 = 05:33:20
DECLARE @:p4 Bigint -- Int64
SET     @:p4 = 6048000000000
DECLARE @:p5 Interval -- Object
SET     @:p5 = 05:33:20
DECLARE @:p6 Interval -- Object
SET     @:p6 = 05:33:20

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
('2020-02-29 17:54:55.123'::timestamp,'2020-02-29 17:54:55.123'::timestamp,'2020-02-29 21:54:55.123'::timestamp,:p1,:p2,:p3,'2020-02-29'::date,NULL),
('2023-10-17 09:40:23'::timestamp,'2020-02-29 17:54:55.123'::timestamp,'2020-02-29 21:54:55.123'::timestamp,:p4,:p5,:p6,'2020-02-29'::date,NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @UtcNow Timestamp -- DateTime2
SET     @UtcNow = '2024-02-07 19:33:11.531'::timestamp
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2024-02-07'::date

SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status"
FROM
	"Common_Topology_Locations" t
WHERE
	(t."Status" <> 'New' OR t."Status" IS NULL) AND
	(t."Status" <> 'Completed' OR t."Status" IS NULL) AND
	t."StartDateTime" + (t."PreNotification" * -1 / 10) * Interval '1 Microsecond' < :UtcNow AND
	Cast(t."StartDateTime" as Date) < :Date

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

