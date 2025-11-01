-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Minute'
FROM
	"LinqDataTypes" t

