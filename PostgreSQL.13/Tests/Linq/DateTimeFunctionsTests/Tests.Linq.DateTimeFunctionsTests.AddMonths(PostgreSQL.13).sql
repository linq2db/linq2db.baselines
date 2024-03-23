BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + -2 * Interval '1 Month') as Date)
FROM
	"LinqDataTypes" t

