BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((extract(epoch from ((t."DateTimeValue" + 100 * Interval '1 Hour')::timestamp - t."DateTimeValue"::timestamp)) / 86400) as Float)
FROM
	"LinqDataTypes" t

