BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(second From (t."TransactionDate" + 41 * Interval '1 Second')))::Int
FROM
	"Transactions" t

