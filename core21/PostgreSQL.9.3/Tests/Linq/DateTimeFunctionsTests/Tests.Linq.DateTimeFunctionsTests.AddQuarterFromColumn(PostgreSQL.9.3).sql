BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month' * 3
FROM
	"LinqDataTypes" t

