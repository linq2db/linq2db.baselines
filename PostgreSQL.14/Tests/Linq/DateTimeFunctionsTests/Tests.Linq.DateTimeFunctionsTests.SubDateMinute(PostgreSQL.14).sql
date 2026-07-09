-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Minute')::timestamp - t."DateTimeValue"::timestamp)) / 60)::Float
FROM
	"LinqDataTypes" t

