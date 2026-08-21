-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
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

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
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

-- Firebird.4 Firebird4
SELECT
	(
		SELECT
			MIN(CAST(DateDiff(millisecond, "t2"."StartedOn", "t2"."FinishedOn") * 10000 AS BigInt))
		FROM
			"BudgetedTaskRow" "t2"
	),
	(
		SELECT
			MAX(CAST(DateDiff(millisecond, "t3"."StartedOn", "t3"."FinishedOn") * 10000 AS BigInt))
		FROM
			"BudgetedTaskRow" "t3"
	),
	Coalesce((
		SELECT
			SUM(CAST(CAST(DateDiff(millisecond, "t4"."StartedOn", "t4"."FinishedOn") * 10000 AS BigInt) AS DOUBLE PRECISION) / 600000000)
		FROM
			"BudgetedTaskRow" "t4"
	), 0)
FROM
	"BudgetedTaskRow" "t1"
FETCH NEXT 1 ROWS ONLY

