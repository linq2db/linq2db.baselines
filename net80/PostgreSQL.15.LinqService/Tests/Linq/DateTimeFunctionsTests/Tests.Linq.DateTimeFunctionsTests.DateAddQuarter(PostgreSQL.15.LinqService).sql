BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + -1 * Interval '1 Month' * 3
FROM
	"LinqDataTypes" t

