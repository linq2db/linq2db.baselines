-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-05 00:00:00.0000'

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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-03 00:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 20:00:00.0000'

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
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", @asOf) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 > 24

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, @asOf, "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 > 24

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
ORDER BY
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", @asOf) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 600000000

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000'

SELECT FIRST 2
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", CAST(@asOf AS TimeStamp)) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000,
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", CAST(@asOf AS TimeStamp)) * 10) AS BigInt) * 1000 AS BigInt) / 36000000000, 24) AS Int)
FROM
	"EventRow" "r"
WHERE
	"r"."Id" = 1

