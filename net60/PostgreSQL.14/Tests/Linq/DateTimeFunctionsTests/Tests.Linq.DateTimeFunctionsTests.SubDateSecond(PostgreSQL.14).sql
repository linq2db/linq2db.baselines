BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((extract(epoch from ((t."DateTimeValue" + 100 * Interval '1 Minute')::timestamp - t."DateTimeValue"::timestamp))) as Float)
FROM
	"LinqDataTypes" t

