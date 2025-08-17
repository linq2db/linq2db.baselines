BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Day'
FROM
	"LinqDataTypes" t

