BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 41

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Second'
FROM
	"LinqDataTypes" t

