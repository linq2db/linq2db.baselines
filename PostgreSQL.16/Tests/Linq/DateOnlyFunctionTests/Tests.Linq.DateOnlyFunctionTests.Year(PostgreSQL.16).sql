-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(year From t."TransactionDate"))::Int
FROM
	"Transactions" t

