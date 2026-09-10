-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000'
DECLARE @Budget BigInt -- Int64
SET     @Budget = 10800

INSERT INTO "BudgetedTaskRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Budget"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 12:00:00.0000'
DECLARE @Budget BigInt -- Int64
SET     @Budget = 10800

INSERT INTO "BudgetedTaskRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Budget"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 13:00:00.0000'
DECLARE @Budget BigInt -- Int64
SET     @Budget = 10800

INSERT INTO "BudgetedTaskRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Budget"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- Firebird.5 Firebird4
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 72000000000

SELECT
	"r"."Id"
FROM
	"BudgetedTaskRow" "r"
WHERE
	CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) > @Ticks
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"BudgetedTaskRow" "r"
WHERE
	CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) > 72000000000
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"BudgetedTaskRow" "r"
WHERE
	CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) > 0
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 0

SELECT
	"r"."Id"
FROM
	"BudgetedTaskRow" "r"
WHERE
	CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) > @Ticks
ORDER BY
	"r"."Id"

