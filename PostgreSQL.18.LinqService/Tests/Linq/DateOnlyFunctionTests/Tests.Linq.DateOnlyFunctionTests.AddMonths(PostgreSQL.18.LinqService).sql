BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + -2 * Interval '1 Month'
FROM
	"Transactions" t

