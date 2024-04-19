BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL
DECLARE @StartDateTime Timestamp -- DateTime2
SET     @StartDateTime = '2020-02-29 17:54:55.123'::timestamp
DECLARE @StartDateTime2 Timestamp -- DateTime2
SET     @StartDateTime2 = '0001-01-01'::date
DECLARE @EndDateTime Timestamp -- DateTime2
SET     @EndDateTime = NULL
DECLARE @PreNotification Bigint -- Int64
SET     @PreNotification = 145820000000
DECLARE @PreNotification2 Interval -- Object
SET     @PreNotification2 = NULL
DECLARE @PreNotification3 Interval -- Object
SET     @PreNotification3 = 00:00:00
DECLARE @StrField Timestamp -- DateTime2
SET     @StrField = NULL
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
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

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
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."StartDateTime",
	x."PreNotification"
FROM
	"Common_Topology_Locations" x
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

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
	Cast(Floor(Extract(hour from (t."StartDateTime" + (t."PreNotification" * -1 / 10) * Interval '1 Microsecond'))) as int) = 13
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

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
	Cast(Floor(Extract(minute from (t."StartDateTime" + (t."PreNotification" * -1 / 10) * Interval '1 Microsecond'))) as int) = 51
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

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
	Cast(Floor(Extract(second from (t."StartDateTime" + (t."PreNotification" * -1 / 10) * Interval '1 Microsecond'))) as int) = 53
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Common_Topology_Locations"

