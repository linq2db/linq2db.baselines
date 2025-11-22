-- PostgreSQL.13 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + 3 * Interval '1 Day')
FROM
	"LinqDataTypes" t

