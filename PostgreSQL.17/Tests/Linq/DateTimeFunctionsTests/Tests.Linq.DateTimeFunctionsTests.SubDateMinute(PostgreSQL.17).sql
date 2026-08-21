-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Extract(epoch From (t."DateTimeValue" + 100 * Interval '1 Minute' - t."DateTimeValue")) / 60
FROM
	"LinqDataTypes" t

