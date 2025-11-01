-- PostgreSQL.18 PostgreSQL

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

