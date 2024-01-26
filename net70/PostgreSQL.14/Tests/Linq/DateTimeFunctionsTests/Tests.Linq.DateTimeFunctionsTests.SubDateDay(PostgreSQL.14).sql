BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((extract(epoch from (t."DateTimeValue" + 100 * Interval '1 Hour') - t."DateTimeValue") / 86400) as Float)
FROM
	"LinqDataTypes" t

