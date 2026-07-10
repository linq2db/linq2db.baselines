-- PostgreSQL.15 PostgreSQL12
SELECT
	Date_Trunc('day', t."DateTimeValue" + t."SmallIntValue" * Interval '1 Year')
FROM
	"LinqDataTypes" t

