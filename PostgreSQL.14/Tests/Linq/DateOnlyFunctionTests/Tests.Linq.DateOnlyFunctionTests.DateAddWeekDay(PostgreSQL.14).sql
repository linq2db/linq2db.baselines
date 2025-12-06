-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."TransactionDate" + Interval '1 Day'
FROM
	"Transactions" t

