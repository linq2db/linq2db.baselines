-- PostgreSQL.19 PostgreSQL13

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Hour'
FROM
	"LinqDataTypes" t

