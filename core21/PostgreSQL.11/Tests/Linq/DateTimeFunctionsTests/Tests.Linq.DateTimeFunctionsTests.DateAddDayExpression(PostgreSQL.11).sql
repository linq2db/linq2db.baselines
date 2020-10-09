BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 5

SELECT 
	t."DateTimeValue" + :p1 * Interval '1 Day'
FROM
	"LinqDataTypes" t

