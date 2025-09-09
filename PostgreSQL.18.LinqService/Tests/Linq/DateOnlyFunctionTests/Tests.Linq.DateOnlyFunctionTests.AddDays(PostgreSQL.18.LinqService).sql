BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

