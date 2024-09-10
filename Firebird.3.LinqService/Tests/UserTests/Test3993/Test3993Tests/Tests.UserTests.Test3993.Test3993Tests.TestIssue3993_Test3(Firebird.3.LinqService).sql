BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @StartDateTime TimeStamp -- DateTime
SET     @StartDateTime = CAST('2020-02-29 17:54:55.123' AS timestamp)
DECLARE @StartDateTime2 TimeStamp -- DateTime
SET     @StartDateTime2 = CAST('0001-01-01' AS timestamp)
DECLARE @EndDateTime TimeStamp -- DateTime
SET     @EndDateTime = NULL
DECLARE @PreNotification BigInt -- Int64
SET     @PreNotification = 145820000000
DECLARE @PreNotification2 BigInt -- Int64
SET     @PreNotification2 = NULL
DECLARE @PreNotification3 BigInt -- Int64
SET     @PreNotification3 = 0
DECLARE @StrField TimeStamp -- DateTime
SET     @StrField = NULL
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
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
WHERE
	Extract(hour from DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")) = 13
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
WHERE
	Extract(minute from DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")) = 51
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."StartDateTime",
	"t1"."StartDateTime2",
	"t1"."EndDateTime",
	"t1"."PreNotification",
	"t1"."PreNotification2",
	"t1"."PreNotification3",
	"t1"."StrField",
	"t1"."Status",
	"t1"."NotificationDateTime"
FROM
	(
		SELECT
			CAST(Floor(Extract(second from DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime"))) AS Int) as "Second_1",
			"x"."StartDateTime",
			"x"."StartDateTime2",
			"x"."EndDateTime",
			"x"."PreNotification",
			"x"."PreNotification2",
			"x"."PreNotification3",
			"x"."StrField",
			"x"."Status",
			DateAdd(Millisecond, -"x"."PreNotification" / 10000, "x"."StartDateTime") as "NotificationDateTime"
		FROM
			"Common_Topology_Locations" "x"
	) "t1"
WHERE
	"t1"."Second_1" >= 52 AND "t1"."Second_1" <= 54
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

