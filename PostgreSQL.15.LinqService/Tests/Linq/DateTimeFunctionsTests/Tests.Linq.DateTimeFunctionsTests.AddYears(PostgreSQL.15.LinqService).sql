BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + Interval '1 Year')
FROM
	"LinqDataTypes" t

