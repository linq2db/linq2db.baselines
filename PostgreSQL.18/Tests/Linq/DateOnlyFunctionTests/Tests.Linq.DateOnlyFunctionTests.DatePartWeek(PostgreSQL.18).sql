-- PostgreSQL.18 PostgreSQL12
SELECT
	Floor(Extract(week From t."TransactionDate"))::Int
FROM
	"Transactions" t

