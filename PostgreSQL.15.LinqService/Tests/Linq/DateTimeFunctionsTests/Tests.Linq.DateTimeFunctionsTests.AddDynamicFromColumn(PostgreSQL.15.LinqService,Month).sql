BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month'
FROM
	"LinqDataTypes" t

