-- PostgreSQL.19 PostgreSQL13

SELECT
	Date_Trunc('day', t."DateTimeValue" + Interval '1 Year')
FROM
	"LinqDataTypes" t

