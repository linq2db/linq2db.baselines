-- PostgreSQL.9.3 PostgreSQL
SELECT
	Extract(epoch From (t."DateTimeValue" + 2023456789 * Interval '1 Millisecond' - t."DateTimeValue")) * 1000
FROM
	"LinqDataTypes" t

