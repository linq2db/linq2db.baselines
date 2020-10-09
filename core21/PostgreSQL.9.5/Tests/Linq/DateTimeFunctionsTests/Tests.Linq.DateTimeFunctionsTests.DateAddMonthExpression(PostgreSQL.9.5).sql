BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 2

SELECT 
	t."DateTimeValue" + :p1 * Interval '1 Month'
FROM
	"LinqDataTypes" t

