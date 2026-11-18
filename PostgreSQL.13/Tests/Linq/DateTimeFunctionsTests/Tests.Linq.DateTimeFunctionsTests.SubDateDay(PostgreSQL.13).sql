-- PostgreSQL.13 PostgreSQL12
SELECT
	Extract(epoch From (t."DateTimeValue" + 100 * Interval '1 Hour' - t."DateTimeValue")) / 86400
FROM
	"LinqDataTypes" t

