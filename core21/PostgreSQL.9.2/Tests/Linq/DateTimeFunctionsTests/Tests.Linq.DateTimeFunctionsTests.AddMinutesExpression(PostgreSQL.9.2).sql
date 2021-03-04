BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = -8

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Minute'
FROM
	"LinqDataTypes" t

