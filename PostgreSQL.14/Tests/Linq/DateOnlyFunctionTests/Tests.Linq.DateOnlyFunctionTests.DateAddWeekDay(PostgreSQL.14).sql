-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."TransactionDate" + Interval '1 Day'
FROM
	"Transactions" t

