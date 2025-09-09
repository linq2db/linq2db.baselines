BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(second From (t."TransactionDate" + -35 * Interval '1 Second')))::Int
FROM
	"Transactions" t

