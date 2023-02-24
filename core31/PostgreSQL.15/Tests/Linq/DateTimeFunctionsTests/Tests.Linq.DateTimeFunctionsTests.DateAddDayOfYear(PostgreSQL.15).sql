BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + 3 * Interval '1 Day'
FROM
	"LinqDataTypes" t

