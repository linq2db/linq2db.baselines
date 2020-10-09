BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t."DateTimeValue" + -8 * Interval '1 Minute'
FROM
	"LinqDataTypes" t

