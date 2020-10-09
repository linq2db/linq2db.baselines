BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	t."DateTimeValue" + 1 * Interval '1 Year'
FROM
	"LinqDataTypes" t

