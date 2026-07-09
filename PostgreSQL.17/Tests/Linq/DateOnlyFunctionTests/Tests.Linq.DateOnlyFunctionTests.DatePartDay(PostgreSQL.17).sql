-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

