-- PostgreSQL.9.5 PostgreSQL
SELECT
	d."TransactionDate"::text::Date
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"::text::Date))::Int > 0

