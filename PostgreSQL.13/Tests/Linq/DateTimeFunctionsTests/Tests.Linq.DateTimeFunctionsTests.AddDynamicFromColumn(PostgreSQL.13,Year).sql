-- PostgreSQL.13 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Year'
FROM
	"LinqDataTypes" t

