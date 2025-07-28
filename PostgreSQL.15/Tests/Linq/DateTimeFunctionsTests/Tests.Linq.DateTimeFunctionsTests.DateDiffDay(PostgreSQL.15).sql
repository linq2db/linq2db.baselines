BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100::float8 * Interval '1 Hour')::timestamp - t."DateTimeValue"::timestamp)) / 86400
FROM
	"LinqDataTypes" t

