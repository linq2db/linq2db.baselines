-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

