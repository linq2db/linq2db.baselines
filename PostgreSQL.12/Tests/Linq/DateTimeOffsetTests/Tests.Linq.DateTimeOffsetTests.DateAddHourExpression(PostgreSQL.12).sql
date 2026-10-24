-- PostgreSQL.12 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	Floor(Extract(hour From (t."TransactionDate" + :Value * Interval '1 Hour')))::Int
FROM
	"Transactions" t

