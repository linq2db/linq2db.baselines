-- PostgreSQL.19 PostgreSQL13

SELECT
	Floor(Extract(quarter From t."TransactionDate"))::Int
FROM
	"Transactions" t

