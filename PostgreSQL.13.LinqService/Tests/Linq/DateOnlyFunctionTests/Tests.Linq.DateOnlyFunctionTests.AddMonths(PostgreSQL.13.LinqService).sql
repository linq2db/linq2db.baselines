BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + -2 * Interval '1 Month'
FROM
	"Transactions" t

