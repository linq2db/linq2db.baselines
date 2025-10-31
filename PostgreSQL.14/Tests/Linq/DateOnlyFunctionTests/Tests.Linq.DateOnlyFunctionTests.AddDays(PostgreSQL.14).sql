-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

