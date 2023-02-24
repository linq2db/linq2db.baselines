BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 11

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Year'
FROM
	"LinqDataTypes" t

