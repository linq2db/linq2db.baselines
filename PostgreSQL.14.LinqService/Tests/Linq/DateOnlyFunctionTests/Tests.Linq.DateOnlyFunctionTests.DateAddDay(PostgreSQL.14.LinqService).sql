BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

