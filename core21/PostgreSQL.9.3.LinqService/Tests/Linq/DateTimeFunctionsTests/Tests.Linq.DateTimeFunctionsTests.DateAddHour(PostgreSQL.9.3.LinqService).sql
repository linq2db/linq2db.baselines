BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t."DateTimeValue" + 1 * Interval '1 Hour'
FROM
	"LinqDataTypes" t

