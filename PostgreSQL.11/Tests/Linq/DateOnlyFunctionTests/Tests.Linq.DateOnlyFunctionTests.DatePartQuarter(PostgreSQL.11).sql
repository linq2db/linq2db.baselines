-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Extract(quarter From t."TransactionDate"))::Int
FROM
	"Transactions" t

