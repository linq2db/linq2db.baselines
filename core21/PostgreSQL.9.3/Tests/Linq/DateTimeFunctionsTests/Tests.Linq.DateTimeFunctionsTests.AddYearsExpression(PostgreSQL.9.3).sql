BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = 1

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Year'
FROM
	"LinqDataTypes" t

