BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	Date_Trunc('day', t."DateTimeValue" + (:Value * Interval '1 Month') * 3)
FROM
	"LinqDataTypes" t

