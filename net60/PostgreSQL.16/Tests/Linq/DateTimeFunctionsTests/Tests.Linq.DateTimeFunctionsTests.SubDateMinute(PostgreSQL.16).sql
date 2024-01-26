BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((extract(epoch from (t."DateTimeValue" + 100 * Interval '1 Minute') - t."DateTimeValue") / 60) as Float)
FROM
	"LinqDataTypes" t

