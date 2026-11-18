-- PostgreSQL.19 PostgreSQL12
SELECT
	Floor(Extract(dow From t."TransactionDate"))::Int + 1
FROM
	"Transactions" t

