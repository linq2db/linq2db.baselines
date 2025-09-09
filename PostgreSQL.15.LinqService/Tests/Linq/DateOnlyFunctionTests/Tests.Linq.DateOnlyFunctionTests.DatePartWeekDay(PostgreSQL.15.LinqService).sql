BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(dow From t."TransactionDate"))::Int + 1
FROM
	"Transactions" t

