-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 15:00:00.0000'

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

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000'

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

-- Firebird.4 Firebird4
SELECT
	"x"."Id"
FROM
	"EventRow" "x"
WHERE
	CAST(CAST(DateDiff(millisecond, "x"."StartedOn", "x"."FinishedOn") * 10000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 > 3

-- Firebird.4 Firebird4
SELECT
	"x"."Id"
FROM
	"EventRow" "x"
WHERE
	CAST(Mod(CAST(DateDiff(millisecond, "x"."StartedOn", "x"."FinishedOn") * 10000 AS BigInt) / 36000000000, 24) AS Int) = 1

-- Firebird.4 Firebird4
SELECT
	"x"."Id"
FROM
	"EventRow" "x"
ORDER BY
	CAST(DateDiff(millisecond, "x"."StartedOn", "x"."FinishedOn") * 10000 AS BigInt) DESC

-- Firebird.4 Firebird4
SELECT
	CAST(DateDiff(millisecond, "x"."StartedOn", "x"."FinishedOn") * 10000 AS BigInt)
FROM
	"EventRow" "x"
ORDER BY
	"x"."Id"

-- Firebird.4 Firebird4
SELECT
	"r"."Id",
	CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

