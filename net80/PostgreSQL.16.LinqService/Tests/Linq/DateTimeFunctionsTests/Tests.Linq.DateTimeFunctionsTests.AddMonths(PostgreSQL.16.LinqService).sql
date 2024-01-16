BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + -2 * Interval '1 Month'
FROM
	"LinqDataTypes" t

