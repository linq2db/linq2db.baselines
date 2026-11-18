-- PostgreSQL.15 PostgreSQL12
SELECT
	Floor(Extract(year From t."TransactionDate"))::Int
FROM
	"Transactions" t

