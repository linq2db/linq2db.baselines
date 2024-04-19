BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = CAST('2024-04-19 14:39:46.656' AS timestamp)
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2024-04-19' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status"
FROM
	"Common_Topology_Locations" "t"
WHERE
	("t"."Status" <> 'New' OR "t"."Status" IS NULL) AND
	("t"."Status" <> 'Completed' OR "t"."Status" IS NULL) AND
	DateAdd(Millisecond, "t"."PreNotification" * -1 / 10000, "t"."StartDateTime") < @UtcNow AND
	Cast("t"."StartDateTime" as Date) < @Date

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

