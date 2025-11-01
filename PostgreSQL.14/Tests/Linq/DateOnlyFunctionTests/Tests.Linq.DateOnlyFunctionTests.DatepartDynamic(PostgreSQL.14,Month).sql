-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(month From t."TransactionDate"))::Int
FROM
	"Transactions" t

