-- PostgreSQL.15 PostgreSQL12

SELECT
	Floor(Extract(quarter From t."TransactionDate"))::Int
FROM
	"Transactions" t

