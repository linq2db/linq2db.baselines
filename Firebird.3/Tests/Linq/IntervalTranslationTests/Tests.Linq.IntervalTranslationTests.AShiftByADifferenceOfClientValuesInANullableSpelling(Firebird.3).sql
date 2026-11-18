-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DueOn TimeStamp -- DateTime
SET     @DueOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'

INSERT INTO "OptionalDueRow"
(
	"Id",
	"DueOn",
	"StartedOn"
)
VALUES
(
	@Id,
	@DueOn,
	@StartedOn
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DueOn TimeStamp -- DateTime
SET     @DueOn = NULL
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'

INSERT INTO "OptionalDueRow"
(
	"Id",
	"DueOn",
	"StartedOn"
)
VALUES
(
	@Id,
	@DueOn,
	@StartedOn
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @DueOn TimeStamp -- DateTime
SET     @DueOn = TIMESTAMP '2026-01-01 12:00:00.0000'
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'

INSERT INTO "OptionalDueRow"
(
	"Id",
	"DueOn",
	"StartedOn"
)
VALUES
(
	@Id,
	@DueOn,
	@StartedOn
)

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."DueOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt) * -1, 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / 864000000000, CAST("r"."DueOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	DateAdd(millisecond, CAST(Mod(CAST(NULL AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(NULL AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."DueOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	"r"."Id"
FROM
	"OptionalDueRow" "r"
WHERE
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."DueOn" AS TimeStamp))) > DateAdd(Hour, 1, "r"."StartedOn")
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	"r"."Id"
FROM
	"OptionalDueRow" "r"
WHERE
	"r"."Id" = 1 AND DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp))) < DateAdd(Hour, 1, "r"."StartedOn")

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	DateAdd(millisecond, CAST(Mod(CAST(NULL AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(NULL AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 72002500000

SELECT
	DateAdd(millisecond, CAST(Mod(CAST(@Ticks AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	DateAdd(millisecond, CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."DueOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."DueOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, CAST("r"."DueOn" AS TimeStamp)))
FROM
	"OptionalDueRow" "r"
ORDER BY
	"r"."Id"

