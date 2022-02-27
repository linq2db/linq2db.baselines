BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 5

SELECT
	t."DateTimeValue" + :p1 * Interval '1 Minute'
FROM
	"LinqDataTypes" t

