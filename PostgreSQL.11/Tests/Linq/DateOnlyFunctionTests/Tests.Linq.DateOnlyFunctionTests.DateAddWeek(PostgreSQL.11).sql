-- PostgreSQL.11 PostgreSQL
SELECT
	t."TransactionDate" + -Interval '1 Day' * 7
FROM
	"Transactions" t

