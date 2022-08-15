BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + -8 * Interval '1 Minute'
FROM
	"LinqDataTypes" t

