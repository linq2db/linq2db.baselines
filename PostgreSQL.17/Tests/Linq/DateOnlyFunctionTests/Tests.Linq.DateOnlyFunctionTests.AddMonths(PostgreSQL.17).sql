BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."TransactionDate" + -2 * Interval '1 Month'
FROM
	"Transactions" t

