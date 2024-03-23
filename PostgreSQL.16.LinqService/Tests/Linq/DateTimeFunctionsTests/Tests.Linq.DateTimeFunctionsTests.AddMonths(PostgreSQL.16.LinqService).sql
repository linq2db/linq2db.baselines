BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + -2 * Interval '1 Month') as Date)
FROM
	"LinqDataTypes" t

