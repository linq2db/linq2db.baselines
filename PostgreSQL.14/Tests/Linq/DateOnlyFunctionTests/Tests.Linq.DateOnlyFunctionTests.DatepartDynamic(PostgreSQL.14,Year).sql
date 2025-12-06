-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(year From t."TransactionDate"))::Int
FROM
	"Transactions" t

