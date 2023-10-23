BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((extract(epoch from ((t."DateTimeValue" + 2023456789 * Interval '1 Millisecond')::timestamp - t."DateTimeValue"::timestamp)) * 1000) as Float)
FROM
	"LinqDataTypes" t

