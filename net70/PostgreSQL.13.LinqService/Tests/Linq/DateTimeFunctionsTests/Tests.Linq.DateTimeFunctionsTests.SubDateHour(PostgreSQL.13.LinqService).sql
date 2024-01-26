BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((extract(epoch from (t."DateTimeValue" + 100 * Interval '1 Hour') - t."DateTimeValue") / 3600) as Float)
FROM
	"LinqDataTypes" t

