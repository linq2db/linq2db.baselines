BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

