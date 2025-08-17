BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + 12 * Interval '1 Year'
FROM
	"Transactions" t

