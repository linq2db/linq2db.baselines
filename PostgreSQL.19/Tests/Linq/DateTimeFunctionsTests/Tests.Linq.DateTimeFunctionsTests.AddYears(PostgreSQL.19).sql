-- PostgreSQL.19 PostgreSQL12
SELECT
	Date_Trunc('day', t."DateTimeValue" + Interval '1 Year')
FROM
	"LinqDataTypes" t

