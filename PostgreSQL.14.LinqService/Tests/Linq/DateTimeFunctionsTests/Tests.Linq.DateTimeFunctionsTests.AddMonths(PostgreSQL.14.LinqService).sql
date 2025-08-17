BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + -2 * Interval '1 Month')
FROM
	"LinqDataTypes" t

