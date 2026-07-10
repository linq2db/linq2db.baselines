-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	t."TransactionDate" + 2 * Interval '1 Month'
FROM
	"Transactions" t

