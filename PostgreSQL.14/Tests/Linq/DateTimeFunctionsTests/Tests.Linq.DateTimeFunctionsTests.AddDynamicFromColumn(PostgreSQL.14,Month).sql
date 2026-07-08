-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month'
FROM
	"LinqDataTypes" t

