BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + 5 * Interval '1 Day')
FROM
	"LinqDataTypes" t

