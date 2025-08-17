BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + 2 * Interval '1 Month')
FROM
	"LinqDataTypes" t

