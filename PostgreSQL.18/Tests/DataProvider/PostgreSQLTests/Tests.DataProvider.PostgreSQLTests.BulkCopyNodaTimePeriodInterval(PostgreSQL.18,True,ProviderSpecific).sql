INSERT BULK "PeriodIntervalTable"(Interval)

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Interval"
FROM
	"PeriodIntervalTable" t1
LIMIT 2

