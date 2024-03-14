BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + 5 * Interval '1 Day') as Date)
FROM
	"LinqDataTypes" t

