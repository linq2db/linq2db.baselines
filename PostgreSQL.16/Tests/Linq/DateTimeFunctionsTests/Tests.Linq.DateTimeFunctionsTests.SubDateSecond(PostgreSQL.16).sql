-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Minute')::timestamp - t."DateTimeValue"::timestamp))::Float
FROM
	"LinqDataTypes" t

