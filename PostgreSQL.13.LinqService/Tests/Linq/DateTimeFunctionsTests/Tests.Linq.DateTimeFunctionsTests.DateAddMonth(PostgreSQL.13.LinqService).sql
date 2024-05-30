BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + 2 * Interval '1 Month')
FROM
	"LinqDataTypes" t

