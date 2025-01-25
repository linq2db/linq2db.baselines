BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	Date_Trunc('day', t."DateTimeValue" + :p * Interval '1 Day')
FROM
	"LinqDataTypes" t

