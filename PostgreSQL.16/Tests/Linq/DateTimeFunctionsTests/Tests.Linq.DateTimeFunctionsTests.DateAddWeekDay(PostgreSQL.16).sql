-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + Interval '1 Day')
FROM
	"LinqDataTypes" t

