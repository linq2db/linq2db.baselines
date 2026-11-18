-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 13:00:00.0000000'
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
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000000'
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
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	(
		SELECT
			MIN(Nano100_Between("t2"."StartedOn", "t2"."FinishedOn"))
		FROM
			"BudgetedTaskRow" "t2"
	),
	(
		SELECT
			MAX(Nano100_Between("t3"."StartedOn", "t3"."FinishedOn"))
		FROM
			"BudgetedTaskRow" "t3"
	),
	Coalesce((
		SELECT
			SUM(CAST(Nano100_Between("t4"."StartedOn", "t4"."FinishedOn") AS Double) / 600000000)
		FROM
			"BudgetedTaskRow" "t4"
	), 0)
FROM
	"BudgetedTaskRow" "t1"
LIMIT 1

