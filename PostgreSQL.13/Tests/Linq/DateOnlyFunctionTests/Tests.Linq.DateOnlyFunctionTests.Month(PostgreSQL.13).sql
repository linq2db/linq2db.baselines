-- PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(month From t."TransactionDate"))::Int
FROM
	"Transactions" t

