-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

