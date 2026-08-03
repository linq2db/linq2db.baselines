-- PostgreSQL.15 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 2023456789 * Interval '1 Millisecond') - t."DateTimeValue"))) * 1000.0
FROM
	"LinqDataTypes" t

