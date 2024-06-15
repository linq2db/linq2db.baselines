BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Common_Topology_Locations"
			(
				"StartDateTime"    TimeStamp,
				"StartDateTime2"   TimeStamp                              NOT NULL,
				"EndDateTime"      TimeStamp,
				"PreNotification"  BigInt,
				"PreNotification2" BigInt,
				"PreNotification3" BigInt                                 NOT NULL,
				"StrField"         TimeStamp,
				"Status"           VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @StartDateTime TimeStamp -- DateTime
SET     @StartDateTime = CAST('2020-02-29 17:54:55.123' AS timestamp)
DECLARE @StartDateTime2 TimeStamp -- DateTime
SET     @StartDateTime2 = CAST('2020-02-29 17:54:55.123' AS timestamp)
DECLARE @EndDateTime TimeStamp -- DateTime
SET     @EndDateTime = CAST('2020-02-29 21:54:55.123' AS timestamp)
DECLARE @PreNotification BigInt -- Int64
SET     @PreNotification = 200000000000
DECLARE @PreNotification2 BigInt -- Int64
SET     @PreNotification2 = 200000000000
DECLARE @PreNotification3 BigInt -- Int64
SET     @PreNotification3 = 200000000000
DECLARE @StrField TimeStamp -- DateTime
SET     @StrField = CAST('2020-02-29' AS timestamp)
DECLARE @Status VarChar -- String
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
	@StartDateTime,
	@StartDateTime2,
	@EndDateTime,
	@PreNotification,
	@PreNotification2,
	@PreNotification3,
	@StrField,
	@Status
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @StartDateTime TimeStamp -- DateTime
SET     @StartDateTime = CAST('2023-10-17 09:40:23' AS timestamp)
DECLARE @StartDateTime2 TimeStamp -- DateTime
SET     @StartDateTime2 = CAST('2020-02-29 17:54:55.123' AS timestamp)
DECLARE @EndDateTime TimeStamp -- DateTime
SET     @EndDateTime = CAST('2020-02-29 21:54:55.123' AS timestamp)
DECLARE @PreNotification BigInt -- Int64
SET     @PreNotification = 6048000000000
DECLARE @PreNotification2 BigInt -- Int64
SET     @PreNotification2 = 200000000000
DECLARE @PreNotification3 BigInt -- Int64
SET     @PreNotification3 = 200000000000
DECLARE @StrField TimeStamp -- DateTime
SET     @StrField = CAST('2020-02-29' AS timestamp)
DECLARE @Status VarChar -- String
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
	@StartDateTime,
	@StartDateTime2,
	@EndDateTime,
	@PreNotification,
	@PreNotification2,
	@PreNotification3,
	@StrField,
	@Status
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = CAST('2024-06-15 08:07:42.308' AS timestamp)
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2024-06-15' AS timestamp)

SELECT
	"x_1"."StartDateTime",
	"x_1"."StartDateTime2",
	"x_1"."EndDateTime",
	"x_1"."PreNotification",
	"x_1"."PreNotification2",
	"x_1"."PreNotification3",
	"x_1"."StrField",
	"x_1"."Status",
	"x_1"."NotificationDateTime"
FROM
	(
		SELECT
			"x"."Status",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime",
			CAST("x"."StartDateTime" AS Date) as "Date_1",
			"x"."StartDateTime",
			"x"."StartDateTime2",
			"x"."EndDateTime",
			"x"."PreNotification",
			"x"."PreNotification2",
			"x"."PreNotification3",
			"x"."StrField"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	("x_1"."Status" <> 'New' OR "x_1"."Status" IS NULL) AND
	("x_1"."Status" <> 'Completed' OR "x_1"."Status" IS NULL) AND
	"x_1"."NotificationDateTime" < @UtcNow AND
	"x_1"."Date_1" < @Date

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

