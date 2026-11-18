-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Day Date
SET     @Day = TIMESTAMP '2026-03-01 00:00:00.0000'
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 15:30:00.2500'

INSERT INTO "DatedEventRow"
(
	"Id",
	"Day",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	@Id,
	@Day,
	@StartedOn,
	@FinishedOn
)

-- Firebird.3 Firebird3
SELECT
	DateAdd(millisecond, CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, CAST("r"."Day" AS TimeStamp)))
FROM
	"DatedEventRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"DatedEventRow" "r"
WHERE
	DateAdd(millisecond, CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, CAST("r"."Day" AS TimeStamp))) > "r"."Day"

