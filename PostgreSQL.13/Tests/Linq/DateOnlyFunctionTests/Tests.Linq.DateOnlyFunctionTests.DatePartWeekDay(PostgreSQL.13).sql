-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(dow From t."TransactionDate"))::Int + 1
FROM
	"Transactions" t

