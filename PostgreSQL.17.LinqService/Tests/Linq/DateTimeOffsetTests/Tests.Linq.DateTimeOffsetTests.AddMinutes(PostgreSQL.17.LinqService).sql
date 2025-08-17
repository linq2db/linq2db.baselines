BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(minute From (t."TransactionDate" + -8 * Interval '1 Minute')))::Int
FROM
	"Transactions" t

