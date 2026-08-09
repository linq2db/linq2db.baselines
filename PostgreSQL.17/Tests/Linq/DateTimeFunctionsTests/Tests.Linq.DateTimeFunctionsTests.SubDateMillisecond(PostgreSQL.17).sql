-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Extract(epoch From (t."DateTimeValue" + 2023456789 * Interval '1 Millisecond' - t."DateTimeValue")) / 0.001
FROM
	"LinqDataTypes" t

