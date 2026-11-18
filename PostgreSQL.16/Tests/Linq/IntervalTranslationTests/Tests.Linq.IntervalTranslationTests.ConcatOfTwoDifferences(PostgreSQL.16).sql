-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Source",
	t1."Duration"
FROM
	(
		SELECT
			1::Int as "Source",
			r."FinishedOn" - r."StartedOn" as "Duration"
		FROM
			"BudgetedTaskRow" r
		UNION ALL
		SELECT
			2::Int as "Source",
			r_1."FinishedOn" - r_1."StartedOn" as "Duration"
		FROM
			"BudgetedTaskRow" r_1
	) t1
ORDER BY
	t1."Source"

