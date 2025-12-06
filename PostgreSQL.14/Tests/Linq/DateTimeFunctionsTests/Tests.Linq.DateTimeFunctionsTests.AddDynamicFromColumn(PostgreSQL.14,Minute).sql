-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Minute'
FROM
	"LinqDataTypes" t

