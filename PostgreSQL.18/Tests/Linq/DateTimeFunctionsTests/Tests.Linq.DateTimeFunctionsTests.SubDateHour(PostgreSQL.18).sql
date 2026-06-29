-- PostgreSQL.18 PostgreSQL13

SELECT
	(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Hour')::timestamp - t."DateTimeValue"::timestamp)) / 3600)::Float
FROM
	"LinqDataTypes" t

