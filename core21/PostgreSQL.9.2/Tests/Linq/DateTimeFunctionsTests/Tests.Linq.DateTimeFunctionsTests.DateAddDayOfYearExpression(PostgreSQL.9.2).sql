BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 3

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Day'
FROM
	"LinqDataTypes" t

