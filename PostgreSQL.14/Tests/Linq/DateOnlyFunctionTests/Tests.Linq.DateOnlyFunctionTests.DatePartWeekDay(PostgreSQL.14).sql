-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(dow From t."TransactionDate"))::Int + 1
FROM
	"Transactions" t

