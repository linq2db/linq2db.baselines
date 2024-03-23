BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + -1 * Interval '1 Day' * 7) as Date)
FROM
	"LinqDataTypes" t

