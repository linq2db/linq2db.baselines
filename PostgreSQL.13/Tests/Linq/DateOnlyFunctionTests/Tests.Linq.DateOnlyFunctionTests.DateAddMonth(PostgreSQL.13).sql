-- PostgreSQL.13 PostgreSQL13

SELECT
	t."TransactionDate" + 2 * Interval '1 Month'
FROM
	"Transactions" t

