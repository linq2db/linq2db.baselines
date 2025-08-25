BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(month From t."TransactionDate"))::Int
FROM
	"Transactions" t

