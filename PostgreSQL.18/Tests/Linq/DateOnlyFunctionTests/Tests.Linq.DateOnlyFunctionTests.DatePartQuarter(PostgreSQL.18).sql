-- PostgreSQL.18 PostgreSQL13

SELECT
	Floor(Extract(quarter From t."TransactionDate"))::Int
FROM
	"Transactions" t

