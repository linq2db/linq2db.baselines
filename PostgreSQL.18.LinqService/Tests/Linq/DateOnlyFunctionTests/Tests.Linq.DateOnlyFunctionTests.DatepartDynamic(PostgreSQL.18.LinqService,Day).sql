BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

