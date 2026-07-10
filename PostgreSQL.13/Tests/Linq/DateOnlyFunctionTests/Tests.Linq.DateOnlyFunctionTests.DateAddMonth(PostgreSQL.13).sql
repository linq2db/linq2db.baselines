-- PostgreSQL.13 PostgreSQL12

SELECT
	t."TransactionDate" + 2 * Interval '1 Month'
FROM
	"Transactions" t

