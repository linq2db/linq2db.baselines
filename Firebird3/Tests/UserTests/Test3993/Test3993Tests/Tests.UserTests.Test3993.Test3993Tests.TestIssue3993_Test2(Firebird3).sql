BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @p1 BigInt -- Int64
SET     @p1 = 200000000000
DECLARE @p2 BigInt -- Int64
SET     @p2 = 200000000000
DECLARE @p3 BigInt -- Int64
SET     @p3 = 200000000000
DECLARE @p4 BigInt -- Int64
SET     @p4 = 6048000000000
DECLARE @p5 BigInt -- Int64
SET     @p5 = 200000000000
DECLARE @p6 BigInt -- Int64
SET     @p6 = 200000000000

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
SELECT CAST('2020-02-29 17:54:55.123' AS timestamp),CAST('2020-02-29 17:54:55.123' AS timestamp),CAST('2020-02-29 21:54:55.123' AS timestamp),CAST(@p1 AS BigInt),CAST(@p2 AS BigInt),CAST(@p3 AS BigInt),CAST('2020-02-29' AS timestamp),CAST(NULL AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT CAST('2023-10-17 09:40:23' AS timestamp),CAST('2020-02-29 17:54:55.123' AS timestamp),CAST('2020-02-29 21:54:55.123' AS timestamp),CAST(@p4 AS BigInt),CAST(@p5 AS BigInt),CAST(@p6 AS BigInt),CAST('2020-02-29' AS timestamp),NULL FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = CAST('2024-04-19 20:49:11.533' AS timestamp)
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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

