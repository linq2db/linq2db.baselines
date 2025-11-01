-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(quarter From t."TransactionDate"))::Int
FROM
	"Transactions" t

