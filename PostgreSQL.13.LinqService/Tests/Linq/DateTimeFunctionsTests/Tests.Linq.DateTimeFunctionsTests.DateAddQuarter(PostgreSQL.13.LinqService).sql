BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + -1 * Interval '1 Month' * 3) as Date)
FROM
	"LinqDataTypes" t

