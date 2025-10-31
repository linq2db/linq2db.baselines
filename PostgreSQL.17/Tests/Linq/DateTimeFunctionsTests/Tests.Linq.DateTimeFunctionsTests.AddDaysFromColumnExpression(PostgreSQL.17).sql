-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Day'
FROM
	"LinqDataTypes" t

