-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"))::Int > 0

