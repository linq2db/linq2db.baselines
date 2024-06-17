BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = CAST('2024-06-17 11:11:36.608' AS timestamp)
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2024-06-17' AS timestamp)

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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

