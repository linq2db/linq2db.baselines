BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 226

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

