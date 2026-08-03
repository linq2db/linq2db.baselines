-- PostgreSQL.13 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Hour') - t."DateTimeValue"))) / 86400.0
FROM
	"LinqDataTypes" t

