-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(doy From t."TransactionDate"))::Int
FROM
	"Transactions" t

