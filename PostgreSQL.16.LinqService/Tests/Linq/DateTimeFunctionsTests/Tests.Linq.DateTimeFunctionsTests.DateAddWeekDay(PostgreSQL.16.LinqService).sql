BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + 1 * Interval '1 Day') as Date)
FROM
	"LinqDataTypes" t

