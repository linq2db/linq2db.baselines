-- PostgreSQL.18 PostgreSQL12
SELECT
	t."TransactionDate" + -Interval '1 Day' * 7
FROM
	"Transactions" t

