-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 12:00:00.0000'

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

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp)))
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt) * -1, 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / 864000000000, CAST("r"."FinishedOn" AS TimeStamp)))
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp))) < "r"."FinishedOn"

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt) * -1, 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / 864000000000, CAST("r"."FinishedOn" AS TimeStamp))) > DateAdd(Hour, 1, "r"."StartedOn")

