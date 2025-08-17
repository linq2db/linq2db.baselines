BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + 2 * Interval '1 Month'
FROM
	"Transactions" t

