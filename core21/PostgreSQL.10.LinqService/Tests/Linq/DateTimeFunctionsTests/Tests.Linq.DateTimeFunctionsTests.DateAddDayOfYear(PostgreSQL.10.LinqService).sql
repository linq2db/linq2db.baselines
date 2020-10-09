BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	t."DateTimeValue" + 3 * Interval '1 Day'
FROM
	"LinqDataTypes" t

