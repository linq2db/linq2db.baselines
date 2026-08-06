-- PostgreSQL.19 PostgreSQL12
SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month'
FROM
	"LinqDataTypes" t

