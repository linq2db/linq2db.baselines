BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(week From t."TransactionDate"))::Int
FROM
	"Transactions" t

