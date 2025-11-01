-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + Interval '1 Day')
FROM
	"LinqDataTypes" t

