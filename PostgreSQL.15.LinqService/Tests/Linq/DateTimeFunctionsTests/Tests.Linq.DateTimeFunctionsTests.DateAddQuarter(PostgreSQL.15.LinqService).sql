BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + -1 * Interval '1 Month' * 3) as Date)
FROM
	"LinqDataTypes" t

