-- PostgreSQL.13 PostgreSQL13

SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Hour')::timestamp - t."DateTimeValue"::timestamp)) / 86400
FROM
	"LinqDataTypes" t

