-- PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(month From t."TransactionDate"))::Int
FROM
	"Transactions" t

