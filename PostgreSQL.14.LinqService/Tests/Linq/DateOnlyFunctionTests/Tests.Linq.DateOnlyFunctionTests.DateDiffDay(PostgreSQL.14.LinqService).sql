BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Hour')::timestamp - t."DateTimeValue"::timestamp)) / 86400
FROM
	"LinqDataTypes" t

