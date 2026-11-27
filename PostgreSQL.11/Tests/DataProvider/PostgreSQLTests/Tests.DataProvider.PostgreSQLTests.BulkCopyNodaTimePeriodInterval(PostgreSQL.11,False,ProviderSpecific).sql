INSERT BULK "PeriodIntervalTable"(Interval)

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Interval"
FROM
	"PeriodIntervalTable" t1
LIMIT 2

