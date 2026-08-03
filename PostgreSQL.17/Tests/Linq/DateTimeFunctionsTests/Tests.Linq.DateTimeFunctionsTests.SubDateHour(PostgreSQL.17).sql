-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Hour') - t."DateTimeValue"))) / 3600.0
FROM
	"LinqDataTypes" t

