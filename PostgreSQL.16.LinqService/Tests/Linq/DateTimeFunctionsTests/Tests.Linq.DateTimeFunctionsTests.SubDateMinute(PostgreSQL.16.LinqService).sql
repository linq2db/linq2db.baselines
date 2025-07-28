BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100::float8 * Interval '1 Minute')::timestamp - t."DateTimeValue"::timestamp)) / 60
FROM
	"LinqDataTypes" t

