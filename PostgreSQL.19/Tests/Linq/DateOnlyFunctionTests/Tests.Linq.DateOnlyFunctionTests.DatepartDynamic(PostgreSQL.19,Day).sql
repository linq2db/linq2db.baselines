-- PostgreSQL.19 PostgreSQL13

SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

