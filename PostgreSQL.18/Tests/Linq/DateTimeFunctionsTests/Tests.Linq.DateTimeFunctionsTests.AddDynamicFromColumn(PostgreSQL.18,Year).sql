-- PostgreSQL.18 PostgreSQL13

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Year'
FROM
	"LinqDataTypes" t

