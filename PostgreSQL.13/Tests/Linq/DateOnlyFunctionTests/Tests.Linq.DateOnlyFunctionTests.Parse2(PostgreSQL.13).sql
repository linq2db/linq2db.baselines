-- PostgreSQL.13 PostgreSQL12
SELECT
	d."TransactionDate"::text::Date
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"::text::Date))::Int > 0

