BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + 1 * Interval '1 Year'
FROM
	"LinqDataTypes" t

