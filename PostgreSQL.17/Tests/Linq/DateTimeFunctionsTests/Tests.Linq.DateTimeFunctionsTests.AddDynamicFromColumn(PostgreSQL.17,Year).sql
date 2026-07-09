-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Year'
FROM
	"LinqDataTypes" t

