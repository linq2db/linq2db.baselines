-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"))::Int > 0

