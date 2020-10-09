BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month' * 3
FROM
	"LinqDataTypes" t

