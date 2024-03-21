BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + 1 * Interval '1 Year') as Date)
FROM
	"LinqDataTypes" t

