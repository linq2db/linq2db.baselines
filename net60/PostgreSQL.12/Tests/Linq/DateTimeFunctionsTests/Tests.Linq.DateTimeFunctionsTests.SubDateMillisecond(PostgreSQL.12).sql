BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((extract(epoch from (t."DateTimeValue" + 2023456789 * Interval '1 Millisecond') - t."DateTimeValue") * 1000) as Float)
FROM
	"LinqDataTypes" t

