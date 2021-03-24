BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = 1

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Day'
FROM
	"LinqDataTypes" t

