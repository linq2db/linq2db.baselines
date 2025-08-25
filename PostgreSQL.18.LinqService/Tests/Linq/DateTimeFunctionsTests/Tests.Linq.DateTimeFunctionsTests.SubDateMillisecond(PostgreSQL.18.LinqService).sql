BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	ROUND(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 2023456789 * Interval '1 Millisecond')::timestamp - t."DateTimeValue"::timestamp)) * 1000)
FROM
	"LinqDataTypes" t

