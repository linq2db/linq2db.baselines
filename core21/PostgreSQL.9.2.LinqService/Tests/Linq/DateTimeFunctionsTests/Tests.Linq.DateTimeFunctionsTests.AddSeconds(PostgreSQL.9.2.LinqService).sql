BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t."DateTimeValue" + -35 * Interval '1 Second'
FROM
	"LinqDataTypes" t

