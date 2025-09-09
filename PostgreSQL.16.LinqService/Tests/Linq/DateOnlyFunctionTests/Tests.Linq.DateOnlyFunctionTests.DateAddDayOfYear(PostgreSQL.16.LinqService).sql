BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + 3 * Interval '1 Day'
FROM
	"Transactions" t

