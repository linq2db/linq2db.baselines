BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t."DateTimeValue" + 22 * Interval '1 Hour'
FROM
	"LinqDataTypes" t

