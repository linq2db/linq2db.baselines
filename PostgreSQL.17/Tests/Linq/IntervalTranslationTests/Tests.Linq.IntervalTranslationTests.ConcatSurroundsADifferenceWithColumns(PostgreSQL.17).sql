-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t2.c1,
	t2."Source",
	t2."Duration",
	t2."Source_1",
	t2."Duration_1",
	t2."Source_2",
	t2."Duration_2"
FROM
	(
		SELECT
			t1."Source" = 1 as c1,
			t1."Source",
			t1."Duration",
			t1."Source" as "Source_1",
			t1."Duration_1",
			NULL::Int as "Source_2",
			NULL::BigInt as "Duration_2"
		FROM
			(
				SELECT
					1::Int as "Source",
					r."Budget" as "Duration",
					NULL::interval as "Duration_1"
				FROM
					"BudgetedTaskRow" r
				UNION ALL
				SELECT
					2::Int as "Source",
					NULL::BigInt as "Duration",
					r_1."FinishedOn" - r_1."StartedOn" as "Duration_1"
				FROM
					"BudgetedTaskRow" r_1
			) t1
		UNION ALL
		SELECT
			NULL::Boolean as c1,
			NULL::Int as "Source",
			NULL::BigInt as "Duration",
			NULL::Int as "Source_1",
			NULL::interval as "Duration_1",
			3::Int as "Source_2",
			r_2."Budget" as "Duration_2"
		FROM
			"BudgetedTaskRow" r_2
	) t2
ORDER BY
	CASE
		WHEN t2.c1 IS NOT NULL THEN CASE
			WHEN t2.c1 THEN t2."Source"
			ELSE t2."Source_1"
		END
		ELSE t2."Source_2"
	END

