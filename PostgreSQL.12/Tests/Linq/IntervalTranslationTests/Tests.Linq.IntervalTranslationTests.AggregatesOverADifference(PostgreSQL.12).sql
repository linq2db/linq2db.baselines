-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 13:00:00'::timestamp
DECLARE @Budget Bigint -- Int64
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
	:Id,
	:StartedOn,
	:FinishedOn,
	:Budget
)

-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 11:00:00'::timestamp
DECLARE @Budget Bigint -- Int64
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
	:Id,
	:StartedOn,
	:FinishedOn,
	:Budget
)

-- PostgreSQL.12 PostgreSQL12
SELECT
	(
		SELECT
			MIN(t2."FinishedOn" - t2."StartedOn")
		FROM
			"BudgetedTaskRow" t2
	),
	(
		SELECT
			MAX(t3."FinishedOn" - t3."StartedOn")
		FROM
			"BudgetedTaskRow" t3
	),
	Coalesce((
		SELECT
			SUM(Extract(epoch From (t4."FinishedOn" - t4."StartedOn")) / 60)
		FROM
			"BudgetedTaskRow" t4
	), 0)
FROM
	"BudgetedTaskRow" t1
LIMIT 1

