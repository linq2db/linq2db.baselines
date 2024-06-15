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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @StartDateTime Timestamp -- DateTime2
SET     @StartDateTime = '2023-10-17 09:40:23'::timestamp
DECLARE @StartDateTime2 Timestamp -- DateTime2
SET     @StartDateTime2 = '2020-02-29 17:54:55.123'::timestamp
DECLARE @EndDateTime Timestamp -- DateTime2
SET     @EndDateTime = '2020-02-29 21:54:55.123'::timestamp
DECLARE @PreNotification Bigint -- Int64
SET     @PreNotification = 6048000000000
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UtcNow Timestamp -- DateTime2
SET     @UtcNow = '2024-06-15 08:29:16.787'::timestamp
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2024-06-15'::date

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

