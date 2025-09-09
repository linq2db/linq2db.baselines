BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Year'
FROM
	"LinqDataTypes" t

