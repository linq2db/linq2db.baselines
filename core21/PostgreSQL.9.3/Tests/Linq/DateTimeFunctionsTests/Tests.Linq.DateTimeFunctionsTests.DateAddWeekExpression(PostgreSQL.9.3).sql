BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = -1

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Day' * 7
FROM
	"LinqDataTypes" t

