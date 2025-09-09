BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Hour Integer -- Int32
SET     @Hour = 22

SELECT
	Floor(Extract(hour From (t."TransactionDate" + :Hour * Interval '1 Hour')))::Int
FROM
	"Transactions" t

