-- PostgreSQL.13 PostgreSQL12
SELECT
	Date_Trunc('day', t."DateTimeValue" + (t."SmallIntValue" * Interval '1 Day') * 7)
FROM
	"LinqDataTypes" t

