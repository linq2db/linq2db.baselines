BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + 11 * Interval '1 Year')
FROM
	"LinqDataTypes" t

