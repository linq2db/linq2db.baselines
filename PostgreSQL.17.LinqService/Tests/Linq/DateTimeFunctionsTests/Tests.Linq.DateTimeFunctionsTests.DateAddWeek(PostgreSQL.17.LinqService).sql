BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + (-Interval '1 Day') * 7)
FROM
	"LinqDataTypes" t

