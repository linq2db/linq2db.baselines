BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast((extract(epoch from ((t."DateTimeValue" + 100 * Interval '1 Minute')::timestamp - t."DateTimeValue"::timestamp)) / 60) as Float)
FROM
	"LinqDataTypes" t

