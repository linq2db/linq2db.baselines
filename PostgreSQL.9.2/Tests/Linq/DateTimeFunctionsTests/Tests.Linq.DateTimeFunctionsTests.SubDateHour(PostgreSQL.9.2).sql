-- PostgreSQL.9.2 PostgreSQL
SELECT
	Extract(epoch From (t."DateTimeValue" + 100 * Interval '1 Hour' - t."DateTimeValue")) / 3600
FROM
	"LinqDataTypes" t

