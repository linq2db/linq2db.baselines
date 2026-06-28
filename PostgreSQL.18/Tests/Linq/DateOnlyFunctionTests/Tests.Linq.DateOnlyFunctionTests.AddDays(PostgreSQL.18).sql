-- PostgreSQL.18 PostgreSQL13

SELECT
	t."TransactionDate" + 5 * Interval '1 Day'
FROM
	"Transactions" t

