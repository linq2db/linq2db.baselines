BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + -2 * Interval '1 Month'
FROM
	"Transactions" t

