-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Minute')::timestamp - t."DateTimeValue"::timestamp))
FROM
	"LinqDataTypes" t

