BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT 
	t."DateTimeValue" + 5 * Interval '1 Minute'
FROM
	"LinqDataTypes" t

