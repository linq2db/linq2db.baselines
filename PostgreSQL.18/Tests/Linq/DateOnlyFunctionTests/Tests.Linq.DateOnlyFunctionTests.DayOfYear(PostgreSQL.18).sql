-- PostgreSQL.18 PostgreSQL12
SELECT
	Floor(Extract(doy From t."TransactionDate"))::Int
FROM
	"Transactions" t

