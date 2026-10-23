-- PostgreSQL.11 PostgreSQL
SELECT
	t."TransactionDate" + 12 * Interval '1 Year'
FROM
	"Transactions" t

