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
SET     @UtcNow = '2024-02-18 14:59:36.463'::timestamp
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2024-02-18'::date

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

