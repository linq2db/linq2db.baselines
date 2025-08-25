BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(year From t."TransactionDate"))::Int
FROM
	"Transactions" t

