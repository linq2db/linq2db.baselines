BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

