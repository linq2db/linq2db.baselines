-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	Date_Trunc('day', t."DateTimeValue" + 5 * Interval '1 Day')
FROM
	"LinqDataTypes" t

