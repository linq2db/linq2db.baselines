-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(dow From t."TransactionDate"))::Int + 1
FROM
	"Transactions" t

