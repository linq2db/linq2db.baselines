BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"))::Int > 0

