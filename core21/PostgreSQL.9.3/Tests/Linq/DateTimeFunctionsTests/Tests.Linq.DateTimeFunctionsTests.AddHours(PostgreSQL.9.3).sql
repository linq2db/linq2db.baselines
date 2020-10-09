BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t."DateTimeValue" + 22 * Interval '1 Hour'
FROM
	"LinqDataTypes" t

