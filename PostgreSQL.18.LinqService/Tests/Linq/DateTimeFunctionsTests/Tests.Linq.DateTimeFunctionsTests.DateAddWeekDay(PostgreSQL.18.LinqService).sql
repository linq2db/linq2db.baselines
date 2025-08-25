BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + Interval '1 Day')
FROM
	"LinqDataTypes" t

