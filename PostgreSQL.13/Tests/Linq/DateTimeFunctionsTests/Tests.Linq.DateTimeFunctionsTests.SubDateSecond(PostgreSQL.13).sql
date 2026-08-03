-- PostgreSQL.13 PostgreSQL12
SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Minute') - t."DateTimeValue"))
FROM
	"LinqDataTypes" t

