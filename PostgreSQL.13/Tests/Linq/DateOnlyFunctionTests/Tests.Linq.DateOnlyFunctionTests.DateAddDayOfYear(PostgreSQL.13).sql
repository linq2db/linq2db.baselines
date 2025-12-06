-- PostgreSQL.13 PostgreSQL

SELECT
	t."TransactionDate" + 3 * Interval '1 Day'
FROM
	"Transactions" t

