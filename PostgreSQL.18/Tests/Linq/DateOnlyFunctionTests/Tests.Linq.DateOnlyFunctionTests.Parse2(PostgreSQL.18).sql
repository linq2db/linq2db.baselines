-- PostgreSQL.18 PostgreSQL12
SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"))::Int > 0

