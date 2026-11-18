-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '1600-01-01 00:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '4700-01-01 12:00:00.0000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Firebird.5 Firebird4
DECLARE @early TimeStamp -- DateTime
SET     @early = TIMESTAMP '1650-01-01 00:00:00.0000'
DECLARE @late TimeStamp -- DateTime
SET     @late = TIMESTAMP '8000-01-01 00:00:00.0000'

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, CAST(@early AS TimeStamp))),
	DateAdd(millisecond, CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) * -1, 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, (CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) * -1) / 864000000000, CAST(@late AS TimeStamp)))
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

