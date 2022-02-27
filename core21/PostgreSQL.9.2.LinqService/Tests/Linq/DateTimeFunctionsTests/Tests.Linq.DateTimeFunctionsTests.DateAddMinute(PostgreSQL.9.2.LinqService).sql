BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t."DateTimeValue" + 5 * Interval '1 Minute'
FROM
	"LinqDataTypes" t

