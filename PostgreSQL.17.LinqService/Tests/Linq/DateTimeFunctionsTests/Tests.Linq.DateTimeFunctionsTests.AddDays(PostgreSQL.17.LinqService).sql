BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + 5 * Interval '1 Day')
FROM
	"LinqDataTypes" t

