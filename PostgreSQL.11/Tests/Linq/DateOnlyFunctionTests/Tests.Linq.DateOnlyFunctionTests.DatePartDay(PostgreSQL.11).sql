-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

