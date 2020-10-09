BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	t."DateTimeValue" + 2 * Interval '1 Month'
FROM
	"LinqDataTypes" t

