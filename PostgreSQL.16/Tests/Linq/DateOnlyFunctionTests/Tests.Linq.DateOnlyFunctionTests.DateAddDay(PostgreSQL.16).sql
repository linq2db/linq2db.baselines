-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

