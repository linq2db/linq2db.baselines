-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + Interval '1 Day')
FROM
	"LinqDataTypes" t

