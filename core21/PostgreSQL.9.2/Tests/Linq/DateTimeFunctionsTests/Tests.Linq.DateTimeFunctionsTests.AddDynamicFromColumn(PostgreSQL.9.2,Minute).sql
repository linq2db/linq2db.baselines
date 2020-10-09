BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Minute'
FROM
	"LinqDataTypes" t

