BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT 
	t."DateTimeValue" + -1 * Interval '1 Month' * 3
FROM
	"LinqDataTypes" t

