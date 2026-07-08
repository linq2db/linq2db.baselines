-- PostgreSQL.18 PostgreSQL12

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

