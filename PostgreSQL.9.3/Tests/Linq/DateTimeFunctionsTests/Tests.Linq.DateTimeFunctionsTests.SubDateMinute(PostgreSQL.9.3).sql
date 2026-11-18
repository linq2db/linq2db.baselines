-- PostgreSQL.9.3 PostgreSQL
SELECT
	Extract(epoch From (t."DateTimeValue" + 100 * Interval '1 Minute' - t."DateTimeValue")) / 60
FROM
	"LinqDataTypes" t

