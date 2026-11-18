-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 15:04:03.0000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-06-01 00:00:00.0000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-06-01 00:00:00.0000'

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- Firebird.2.5 Firebird
SELECT FIRST 2
	DateAdd(millisecond, Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 10000, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, CAST(TIMESTAMP '2026-06-20 00:00:00.0000' AS TimeStamp)))
FROM
	"CoarseEventRow" "r"

