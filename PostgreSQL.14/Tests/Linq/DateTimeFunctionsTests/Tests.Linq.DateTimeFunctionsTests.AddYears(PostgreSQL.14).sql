BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + 1 * Interval '1 Year') as Date)
FROM
	"LinqDataTypes" t

