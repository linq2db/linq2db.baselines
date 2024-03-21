BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + 11 * Interval '1 Year') as Date)
FROM
	"LinqDataTypes" t

