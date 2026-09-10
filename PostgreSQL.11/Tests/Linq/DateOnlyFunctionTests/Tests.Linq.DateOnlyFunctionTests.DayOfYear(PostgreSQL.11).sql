-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Extract(doy From t."TransactionDate"))::Int
FROM
	"Transactions" t

