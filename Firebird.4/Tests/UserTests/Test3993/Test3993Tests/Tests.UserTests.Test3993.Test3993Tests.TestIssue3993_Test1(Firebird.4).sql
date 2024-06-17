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
DECLARE @p1 BigInt -- Int64
SET     @p1 = 200000000000
DECLARE @p2 BigInt -- Int64
SET     @p2 = 200000000000
DECLARE @p3 BigInt -- Int64
SET     @p3 = 200000000000

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
SELECT CAST('2020-02-29 17:54:55.123' AS timestamp),CAST('2020-02-29 17:54:55.123' AS timestamp),CAST('2020-02-29 21:54:55.123' AS timestamp),CAST(@p1 AS BigInt),CAST(@p2 AS BigInt),CAST(@p3 AS BigInt),CAST('2020-02-29' AS timestamp),CAST(NULL AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."StartDateTime",
	"t1"."StartDateTime2",
	"t1"."EndDateTime",
	"t1"."PreNotification",
	"t1"."PreNotification2",
	"t1"."PreNotification3",
	"t1"."StrField",
	"t1"."Status"
FROM
	"Common_Topology_Locations" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."StartDateTime2",
	"x"."EndDateTime",
	"x"."PreNotification",
	"x"."PreNotification2",
	"x"."PreNotification3",
	"x"."StrField",
	"x"."Status"
FROM
	"Common_Topology_Locations" "x"
WHERE
	Extract(year from "x"."StartDateTime2") = 2023

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = CAST('2024-06-17 11:03:57.901' AS timestamp)

SELECT
	"x"."StartDateTime",
	"x"."StartDateTime2",
	"x"."EndDateTime",
	"x"."PreNotification",
	"x"."PreNotification2",
	"x"."PreNotification3",
	"x"."StrField",
	"x"."Status"
FROM
	"Common_Topology_Locations" "x"
WHERE
	DateAdd(Millisecond, 300000, "x"."StartDateTime2") > @UtcNow

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = CAST('2024-06-17 11:03:57.906' AS timestamp)

SELECT
	"x"."StartDateTime",
	"x"."StartDateTime2",
	"x"."EndDateTime",
	"x"."PreNotification",
	"x"."PreNotification2",
	"x"."PreNotification3",
	"x"."StrField",
	"x"."Status"
FROM
	"Common_Topology_Locations" "x"
WHERE
	DateAdd(Millisecond, 3153600000000, "x"."StartDateTime2") > @UtcNow

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x_1"."t1",
	"x_1"."t2"
FROM
	(
		SELECT
			CAST("x"."PreNotification" / 10000000 AS Float) as "t2",
			CAST("x"."PreNotification" / 10000 AS Float) as "t1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."t2" < "x_1"."t1"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"x_1"."NotificationDateTime_1",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -1 * ("x"."PreNotification" / 10000), "x"."StartDateTime") as "NotificationDateTime",
			"x"."StartDateTime" as "NotificationDateTime_1",
			"x"."PreNotification",
			DateAdd(Millisecond, -1 * ("x"."PreNotification2" / 10000), "x"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("x"."PreNotification3" / 10000), "x"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime2") as "NotificationDateTime8",
			Extract(day from "x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime" < @DateTime4Utc

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"x_1"."NotificationDateTime2_1",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -1 * ("x"."PreNotification2" / 10000), "x"."StartDateTime") as "NotificationDateTime2",
			"x"."StartDateTime" as "NotificationDateTime2_1",
			"x"."PreNotification",
			DateAdd(Millisecond, -1 * ("x"."PreNotification" / 10000), "x"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("x"."PreNotification3" / 10000), "x"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime2") as "NotificationDateTime8",
			Extract(day from "x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime2" < @DateTime4Utc

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime") as "NotificationDateTime4",
			"x"."StartDateTime",
			"x"."PreNotification",
			DateAdd(Millisecond, -1 * ("x"."PreNotification" / 10000), "x"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("x"."PreNotification2" / 10000), "x"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("x"."PreNotification3" / 10000), "x"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime2") as "NotificationDateTime8",
			Extract(day from "x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime4" < @DateTime4Utc

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime5",
			"x"."StartDateTime",
			"x"."PreNotification",
			DateAdd(Millisecond, -1 * ("x"."PreNotification" / 10000), "x"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("x"."PreNotification2" / 10000), "x"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("x"."PreNotification3" / 10000), "x"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, "x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime2") as "NotificationDateTime8",
			Extract(day from "x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime5" < @DateTime4Utc

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, "x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime6",
			"x"."StartDateTime",
			"x"."PreNotification",
			DateAdd(Millisecond, -1 * ("x"."PreNotification" / 10000), "x"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("x"."PreNotification2" / 10000), "x"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("x"."PreNotification3" / 10000), "x"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime2") as "NotificationDateTime8",
			Extract(day from "x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime6" < @DateTime4Utc

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime2") as "NotificationDateTime7",
			"x"."StartDateTime",
			"x"."PreNotification",
			DateAdd(Millisecond, -1 * ("x"."PreNotification" / 10000), "x"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("x"."PreNotification2" / 10000), "x"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("x"."PreNotification3" / 10000), "x"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime2") as "NotificationDateTime8",
			Extract(day from "x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime7" < @DateTime4Utc

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime2") as "NotificationDateTime8",
			"x"."StartDateTime",
			"x"."PreNotification",
			DateAdd(Millisecond, -1 * ("x"."PreNotification" / 10000), "x"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("x"."PreNotification2" / 10000), "x"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("x"."PreNotification3" / 10000), "x"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime2") as "NotificationDateTime7",
			Extract(day from "x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime8" < @DateTime4Utc

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"x_1"."NotificationDateTime4"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"x"."PreNotification3" / 10000, "x"."StartDateTime") as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime4" < @DateTimeUtc

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Cast(DateDiff(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000 as BIGINT)
FROM
	"Common_Topology_Locations" "t"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT)
FROM
	"Common_Topology_Locations" "x"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	"x_1"."diff"
FROM
	(
		SELECT
			Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT) as "diff"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."diff" < @p

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x_1"."Value_1"
FROM
	(
		SELECT
			Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT) as "Value_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	CAST("x_1"."Value_1" / 36000000000 AS Float) < 5

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	"x_1"."diff"
FROM
	(
		SELECT
			Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT) as "diff"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."diff" < @p

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x_1"."Value_1"
FROM
	(
		SELECT
			Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT) as "Value_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	CAST("x_1"."Value_1" / 36000000000 AS Float) < 2

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

