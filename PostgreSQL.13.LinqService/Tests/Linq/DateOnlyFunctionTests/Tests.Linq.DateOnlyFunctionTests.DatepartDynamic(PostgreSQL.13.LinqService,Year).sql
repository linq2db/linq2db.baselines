BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(year From t."TransactionDate"))::Int
FROM
	"Transactions" t

