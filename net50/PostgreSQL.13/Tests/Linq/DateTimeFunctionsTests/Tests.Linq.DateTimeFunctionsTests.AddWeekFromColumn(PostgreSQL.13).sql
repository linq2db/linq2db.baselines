BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + Cast(t."SmallIntValue" as Float) * Interval '1 Day' * 7
FROM
	"LinqDataTypes" t

