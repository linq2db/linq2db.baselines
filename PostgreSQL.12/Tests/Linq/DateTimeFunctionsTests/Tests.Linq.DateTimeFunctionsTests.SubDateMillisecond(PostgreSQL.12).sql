-- PostgreSQL.12 PostgreSQL12
SELECT
	Extract(epoch From (t."DateTimeValue" + 2023456789 * Interval '1 Millisecond' - t."DateTimeValue")) * 1000
FROM
	"LinqDataTypes" t

