BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Day'
FROM
	"LinqDataTypes" t

