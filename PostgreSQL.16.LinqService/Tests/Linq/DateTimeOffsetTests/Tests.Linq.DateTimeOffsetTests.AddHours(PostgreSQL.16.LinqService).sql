BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(hour From (t."TransactionDate" + 22 * Interval '1 Hour')))::Int
FROM
	"Transactions" t

