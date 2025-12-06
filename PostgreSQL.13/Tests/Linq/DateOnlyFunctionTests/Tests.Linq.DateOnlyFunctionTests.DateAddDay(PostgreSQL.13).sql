-- PostgreSQL.13 PostgreSQL

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

