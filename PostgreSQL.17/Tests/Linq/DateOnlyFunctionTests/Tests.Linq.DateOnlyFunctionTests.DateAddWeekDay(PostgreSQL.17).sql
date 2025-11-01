-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."TransactionDate" + Interval '1 Day'
FROM
	"Transactions" t

