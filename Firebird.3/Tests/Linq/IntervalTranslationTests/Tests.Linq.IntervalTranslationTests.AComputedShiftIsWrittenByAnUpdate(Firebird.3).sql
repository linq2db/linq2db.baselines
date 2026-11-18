-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 15:30:00.2500'
DECLARE @Due TimeStamp -- DateTime
SET     @Due = TIMESTAMP '2026-01-01 10:00:00.0000'

INSERT INTO "ShiftTargetRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Due"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Due
)

-- Firebird.3 Firebird3
UPDATE
	"ShiftTargetRow" "r"
SET
	"Due" = DateAdd(millisecond, CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, CAST(TIMESTAMP '2026-03-01 00:00:00.0000' AS TimeStamp)))
WHERE
	"r"."Id" = 1

-- Firebird.3 Firebird3
SELECT
	"r"."Due"
FROM
	"ShiftTargetRow" "r"
FETCH NEXT 2 ROWS ONLY

