BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + 11 * Interval '1 Year') as Date)
FROM
	"LinqDataTypes" t

