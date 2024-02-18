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
-- Firebird3 Firebird

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
-- Firebird3 Firebird

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
	Cast(Floor(Extract(year from "x"."StartDateTime2")) as int) = 2023

BeforeExecute
-- Firebird3 Firebird
DECLARE @p BigInt -- Int64
SET     @p = 300000
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = CAST('2024-02-18 14:47:51.804' AS timestamp)

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
	DateAdd(Millisecond, @p, "x"."StartDateTime2") > @UtcNow

BeforeExecute
-- Firebird3 Firebird
DECLARE @p BigInt -- Int64
SET     @p = 3153600000000
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = CAST('2024-02-18 14:47:51.810' AS timestamp)

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
	DateAdd(Millisecond, @p, "x"."StartDateTime2") > @UtcNow

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."PreNotification"
FROM
	"Common_Topology_Locations" "x"
WHERE
	Cast(("x"."PreNotification" / 10000000) as Float) < Cast(("x"."PreNotification" / 10000) as Float)

BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StartDateTime2",
	"t"."StrField"
FROM
	"Common_Topology_Locations" "t"
WHERE
	DateAdd(Millisecond, -1 * ("t"."PreNotification" / 10000), "t"."StartDateTime") < @DateTimeUtc

BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StartDateTime2",
	"t"."StrField"
FROM
	"Common_Topology_Locations" "t"
WHERE
	DateAdd(Millisecond, -1 * ("t"."PreNotification2" / 10000), "t"."StartDateTime") < @DateTimeUtc

BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StartDateTime2",
	"t"."StrField"
FROM
	"Common_Topology_Locations" "t"
WHERE
	DateAdd(Millisecond, "t"."PreNotification3" * -1 / 10000, "t"."StartDateTime") < @DateTimeUtc

BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StartDateTime2",
	"t"."StrField"
FROM
	"Common_Topology_Locations" "t"
WHERE
	DateAdd(Millisecond, "t"."PreNotification" * -1 / 10000, "t"."StartDateTime") < @DateTimeUtc

BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StartDateTime2",
	"t"."StrField"
FROM
	"Common_Topology_Locations" "t"
WHERE
	DateAdd(Millisecond, "t"."PreNotification" / 10000, "t"."StartDateTime") < @DateTimeUtc

BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StartDateTime2",
	"t"."StrField"
FROM
	"Common_Topology_Locations" "t"
WHERE
	DateAdd(Millisecond, "t"."PreNotification" * -1 / 10000, "t"."StartDateTime2") < @DateTimeUtc

BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StartDateTime2",
	"t"."StrField"
FROM
	"Common_Topology_Locations" "t"
WHERE
	DateAdd(Millisecond, "t"."PreNotification3" * -1 / 10000, "t"."StartDateTime2") < @DateTimeUtc

BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t"."StartDateTime",
	"t"."PreNotification3"
FROM
	"Common_Topology_Locations" "t"
WHERE
	DateAdd(Millisecond, "t"."PreNotification3" * -1 / 10000, "t"."StartDateTime") < @DateTimeUtc

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."EndDateTime",
	"t"."StartDateTime"
FROM
	"Common_Topology_Locations" "t"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."EndDateTime",
	"x"."StartDateTime"
FROM
	"Common_Topology_Locations" "x"

BeforeExecute
-- Firebird3 Firebird
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	"t"."EndDateTime",
	"t"."StartDateTime"
FROM
	"Common_Topology_Locations" "t"
WHERE
	(DateDiff(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000) < @p

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."EndDateTime",
	"t"."StartDateTime"
FROM
	"Common_Topology_Locations" "t"
WHERE
	Cast(((DateDiff(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000) / 36000000000) as Float) < 5

BeforeExecute
-- Firebird3 Firebird
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	"t"."EndDateTime",
	"t"."StartDateTime"
FROM
	"Common_Topology_Locations" "t"
WHERE
	(DateDiff(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000) < @p

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."EndDateTime",
	"t"."StartDateTime"
FROM
	"Common_Topology_Locations" "t"
WHERE
	Cast(((DateDiff(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000) / 36000000000) as Float) < 2

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

