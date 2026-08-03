-- PostgreSQL.18 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Minute') - t."DateTimeValue"))) / 60.0
FROM
	"LinqDataTypes" t

