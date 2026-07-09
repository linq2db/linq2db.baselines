-- PostgreSQL.18 PostgreSQL13

SELECT
	Floor(Extract(week From t."TransactionDate"))::Int
FROM
	"Transactions" t

