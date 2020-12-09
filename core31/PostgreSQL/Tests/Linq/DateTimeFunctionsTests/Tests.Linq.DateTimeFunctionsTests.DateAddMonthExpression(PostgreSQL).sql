BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Month'
FROM
	"LinqDataTypes" t

