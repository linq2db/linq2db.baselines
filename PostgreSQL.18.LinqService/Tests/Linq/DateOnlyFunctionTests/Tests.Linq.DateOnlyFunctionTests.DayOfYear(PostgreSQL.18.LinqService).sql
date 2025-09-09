BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(doy From t."TransactionDate"))::Int
FROM
	"Transactions" t

