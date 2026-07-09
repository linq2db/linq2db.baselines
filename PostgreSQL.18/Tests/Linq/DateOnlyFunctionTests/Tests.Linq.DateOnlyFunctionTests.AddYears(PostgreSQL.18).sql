-- PostgreSQL.18 PostgreSQL13

SELECT
	t."TransactionDate" + 12 * Interval '1 Year'
FROM
	"Transactions" t

