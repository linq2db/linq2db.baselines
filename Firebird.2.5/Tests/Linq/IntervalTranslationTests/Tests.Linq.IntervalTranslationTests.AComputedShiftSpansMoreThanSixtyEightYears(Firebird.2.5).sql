-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '1980-01-01 00:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2060-01-01 12:00:00.0000'

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

-- Firebird.2.5 Firebird
DECLARE @early TimeStamp -- DateTime
SET     @early = TIMESTAMP '1971-01-01 00:00:00.0000'
DECLARE @late TimeStamp -- DateTime
SET     @late = TIMESTAMP '2100-01-01 00:00:00.0000'

SELECT FIRST 2
	DateAdd(millisecond, Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 10000, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, CAST(@early AS TimeStamp))),
	DateAdd(millisecond, Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) * -1, 864000000000) / 10000, DateAdd(day, (CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) * -1) / 864000000000, CAST(@late AS TimeStamp)))
FROM
	"EventRow" "r"

