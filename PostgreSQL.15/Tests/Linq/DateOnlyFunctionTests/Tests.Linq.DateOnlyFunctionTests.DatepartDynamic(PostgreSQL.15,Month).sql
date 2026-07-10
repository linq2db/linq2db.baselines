-- PostgreSQL.15 PostgreSQL12

SELECT
	Floor(Extract(month From t."TransactionDate"))::Int
FROM
	"Transactions" t

