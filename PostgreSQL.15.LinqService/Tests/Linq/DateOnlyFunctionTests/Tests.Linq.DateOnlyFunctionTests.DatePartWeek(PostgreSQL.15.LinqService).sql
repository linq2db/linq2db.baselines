BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(week From t."TransactionDate"))::Int
FROM
	"Transactions" t

