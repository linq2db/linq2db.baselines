-- PostgreSQL.19 PostgreSQL13

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"))::Int > 0

