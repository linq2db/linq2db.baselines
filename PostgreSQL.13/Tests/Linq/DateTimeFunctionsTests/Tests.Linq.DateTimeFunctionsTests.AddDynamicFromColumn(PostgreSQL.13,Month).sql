-- PostgreSQL.13 PostgreSQL13

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month'
FROM
	"LinqDataTypes" t

