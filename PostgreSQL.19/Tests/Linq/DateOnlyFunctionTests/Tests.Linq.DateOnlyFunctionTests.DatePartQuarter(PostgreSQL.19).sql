-- PostgreSQL.19 PostgreSQL12

SELECT
	Floor(Extract(quarter From t."TransactionDate"))::Int
FROM
	"Transactions" t

