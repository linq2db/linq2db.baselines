BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	ROUND(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 2023456789 * Interval '1 Millisecond')::timestamp - t."DateTimeValue"::timestamp)) * 1000)
FROM
	"LinqDataTypes" t

