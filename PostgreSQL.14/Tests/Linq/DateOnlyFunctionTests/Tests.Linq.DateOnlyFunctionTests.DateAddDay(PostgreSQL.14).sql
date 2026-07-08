-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

