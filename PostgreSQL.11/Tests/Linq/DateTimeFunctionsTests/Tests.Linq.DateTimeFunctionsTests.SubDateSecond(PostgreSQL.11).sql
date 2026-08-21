-- PostgreSQL.11 PostgreSQL
SELECT
	Extract(epoch From (t."DateTimeValue" + 100 * Interval '1 Minute' - t."DateTimeValue"))
FROM
	"LinqDataTypes" t

