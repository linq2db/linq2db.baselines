-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

