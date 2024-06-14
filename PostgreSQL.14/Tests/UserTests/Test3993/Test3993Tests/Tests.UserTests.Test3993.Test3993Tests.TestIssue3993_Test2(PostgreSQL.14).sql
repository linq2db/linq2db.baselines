BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UtcNow Timestamp -- DateTime2
SET     @UtcNow = '2024-06-14 10:07:28.790'::timestamp
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2024-06-14'::date

SELECT
	x_1."StartDateTime",
	x_1."StartDateTime2",
	x_1."EndDateTime",
	x_1."PreNotification",
	x_1."PreNotification2",
	x_1."PreNotification3",
	x_1."StrField",
	x_1."Status",
	x_1."NotificationDateTime"
FROM
	(
		SELECT
			x."Status",
			x."StartDateTime" + (-x."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime",
			Date_Trunc('day', x."StartDateTime") as "Date_1",
			x."StartDateTime",
			x."StartDateTime2",
			x."EndDateTime",
			x."PreNotification",
			x."PreNotification2",
			x."PreNotification3",
			x."StrField"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	(x_1."Status" <> 'New' OR x_1."Status" IS NULL) AND
	(x_1."Status" <> 'Completed' OR x_1."Status" IS NULL) AND
	x_1."NotificationDateTime" < :UtcNow AND
	x_1."Date_1" < :Date

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

