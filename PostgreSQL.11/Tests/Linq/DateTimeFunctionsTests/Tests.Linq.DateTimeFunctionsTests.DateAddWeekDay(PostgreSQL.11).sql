BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + 1 * Interval '1 Day') as Date)
FROM
	"LinqDataTypes" t

