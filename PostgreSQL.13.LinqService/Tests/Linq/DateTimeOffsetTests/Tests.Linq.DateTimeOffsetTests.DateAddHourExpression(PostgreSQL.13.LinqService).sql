BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	Floor(Extract(hour From (t."TransactionDate" + :Value * Interval '1 Hour')))::Int
FROM
	"Transactions" t

