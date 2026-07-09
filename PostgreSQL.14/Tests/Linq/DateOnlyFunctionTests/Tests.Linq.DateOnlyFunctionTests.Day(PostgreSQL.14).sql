-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

