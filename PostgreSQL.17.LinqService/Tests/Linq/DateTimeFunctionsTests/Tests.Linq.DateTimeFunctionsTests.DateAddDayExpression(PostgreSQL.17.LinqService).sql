BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	Date_Trunc('day', t."DateTimeValue" + :Value * Interval '1 Day')
FROM
	"LinqDataTypes" t

