-- PostgreSQL.13 PostgreSQL13

SELECT
	t."TransactionDate" + -Interval '1 Month' * 3
FROM
	"Transactions" t

