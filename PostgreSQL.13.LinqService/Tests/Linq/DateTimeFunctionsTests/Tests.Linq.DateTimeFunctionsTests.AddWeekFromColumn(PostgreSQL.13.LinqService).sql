BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', t."DateTimeValue" + (t."SmallIntValue" * Interval '1 Day') * 7)
FROM
	"LinqDataTypes" t

