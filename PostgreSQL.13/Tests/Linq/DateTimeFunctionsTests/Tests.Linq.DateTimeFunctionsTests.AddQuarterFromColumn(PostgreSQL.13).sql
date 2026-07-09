-- PostgreSQL.13 PostgreSQL13

SELECT
	Date_Trunc('day', t."DateTimeValue" + (t."SmallIntValue" * Interval '1 Month') * 3)
FROM
	"LinqDataTypes" t

