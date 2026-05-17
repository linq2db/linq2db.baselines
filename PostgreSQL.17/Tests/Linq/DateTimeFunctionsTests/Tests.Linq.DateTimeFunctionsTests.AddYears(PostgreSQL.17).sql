-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + Interval '1 Year')
FROM
	"LinqDataTypes" t

