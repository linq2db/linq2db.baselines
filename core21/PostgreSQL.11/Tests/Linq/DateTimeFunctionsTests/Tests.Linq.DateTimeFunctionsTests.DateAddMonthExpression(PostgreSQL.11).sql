BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = 2

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Month'
FROM
	"LinqDataTypes" t

