-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Source",
	t1."First_1",
	t1."Second_1",
	t1."First_2",
	t1."Second_2"
FROM
	(
		SELECT
			1::Int as "Source",
			r."Budget" as "First_1",
			r."FinishedOn" - r."StartedOn" as "Second_1",
			NULL::interval as "First_2",
			NULL::BigInt as "Second_2"
		FROM
			"BudgetedTaskRow" r
		UNION ALL
		SELECT
			2::Int as "Source",
			NULL::BigInt as "First_1",
			NULL::interval as "Second_1",
			r_1."FinishedOn" - r_1."StartedOn" as "First_2",
			r_1."Budget" as "Second_2"
		FROM
			"BudgetedTaskRow" r_1
	) t1
ORDER BY
	t1."Source"

