BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	Floor(Extract(minute From (t."TransactionDate" + :Value * Interval '1 Minute')))::Int
FROM
	"Transactions" t

