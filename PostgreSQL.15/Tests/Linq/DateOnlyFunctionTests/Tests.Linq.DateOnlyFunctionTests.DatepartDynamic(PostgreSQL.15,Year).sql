-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(year From t."TransactionDate"))::Int
FROM
	"Transactions" t

