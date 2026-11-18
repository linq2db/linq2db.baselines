-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Extract(dow From t."TransactionDate"))::Int + 1
FROM
	"Transactions" t

