BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t."DateTimeValue" + -1 * Interval '1 Day' * 7
FROM
	"LinqDataTypes" t

