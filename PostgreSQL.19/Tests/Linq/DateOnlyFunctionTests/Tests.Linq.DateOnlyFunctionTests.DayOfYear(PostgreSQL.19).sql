-- PostgreSQL.19 PostgreSQL12
SELECT
	Floor(Extract(doy From t."TransactionDate"))::Int
FROM
	"Transactions" t

