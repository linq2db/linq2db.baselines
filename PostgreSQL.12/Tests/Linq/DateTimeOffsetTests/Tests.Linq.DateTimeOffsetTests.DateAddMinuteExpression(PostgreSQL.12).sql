-- PostgreSQL.12 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	Floor(Extract(minute From (t."TransactionDate" + :Value * Interval '1 Minute')))::Int
FROM
	"Transactions" t

