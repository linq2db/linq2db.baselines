-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."TransactionDate" + -Interval '1 Day' * 7
FROM
	"Transactions" t

