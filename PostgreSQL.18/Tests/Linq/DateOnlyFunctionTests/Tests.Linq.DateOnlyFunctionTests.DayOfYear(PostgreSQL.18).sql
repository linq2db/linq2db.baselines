-- PostgreSQL.18 PostgreSQL13

SELECT
	Floor(Extract(doy From t."TransactionDate"))::Int
FROM
	"Transactions" t

