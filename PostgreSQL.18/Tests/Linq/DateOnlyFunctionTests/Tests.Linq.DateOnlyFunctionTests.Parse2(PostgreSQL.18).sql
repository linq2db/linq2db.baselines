-- PostgreSQL.18 PostgreSQL

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"))::Int > 0

