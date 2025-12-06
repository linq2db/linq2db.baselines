-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(month From t."TransactionDate"))::Int
FROM
	"Transactions" t

