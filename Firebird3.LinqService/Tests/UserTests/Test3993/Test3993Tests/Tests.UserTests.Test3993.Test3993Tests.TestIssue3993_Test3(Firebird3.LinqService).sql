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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
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

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."StartDateTime",
	"x"."PreNotification"
FROM
	"Common_Topology_Locations" "x"

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
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
	Cast(Floor(Extract(hour from DateAdd(Millisecond, "t"."PreNotification" * -1 / 10000, "t"."StartDateTime"))) as int) = 13

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
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
	Cast(Floor(Extract(minute from DateAdd(Millisecond, "t"."PreNotification" * -1 / 10000, "t"."StartDateTime"))) as int) = 51

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
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
	Cast(Floor(Extract(second from DateAdd(Millisecond, "t"."PreNotification" * -1 / 10000, "t"."StartDateTime"))) as int) = 53

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Common_Topology_Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Common_Topology_Locations"';
END

