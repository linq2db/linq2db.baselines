BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(hour From (t."TransactionDate" + Interval '1 Hour')))::Int
FROM
	"Transactions" t

