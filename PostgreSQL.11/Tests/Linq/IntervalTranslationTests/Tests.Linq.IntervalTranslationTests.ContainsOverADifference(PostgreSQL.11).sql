-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 12:00:00'::timestamp
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

-- PostgreSQL.11 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
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

-- PostgreSQL.11 PostgreSQL
DECLARE @value Interval -- Object
SET     @value = 01:00:00
DECLARE @value_1 Interval -- Object
SET     @value_1 = 03:00:00

SELECT
	r."Id"
FROM
	"BudgetedTaskRow" r
WHERE
	(r."FinishedOn" - r."StartedOn") IN (:value, :value_1)
ORDER BY
	r."Id"

-- PostgreSQL.11 PostgreSQL
DECLARE @value Interval -- Object
SET     @value = 02:00:00

SELECT
	CASE
		WHEN :value IN (
			SELECT
				r."FinishedOn" - r."StartedOn"
			FROM
				"BudgetedTaskRow" r
		)
			THEN True
		ELSE False
	END

-- PostgreSQL.11 PostgreSQL
DECLARE @value Interval -- Object
SET     @value = 05:00:00

SELECT
	CASE
		WHEN :value IN (
			SELECT
				r."FinishedOn" - r."StartedOn"
			FROM
				"BudgetedTaskRow" r
		)
			THEN True
		ELSE False
	END

