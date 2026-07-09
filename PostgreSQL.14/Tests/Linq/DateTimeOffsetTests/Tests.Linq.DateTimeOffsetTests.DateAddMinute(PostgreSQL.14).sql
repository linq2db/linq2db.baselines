-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	Floor(Extract(minute From (t."TransactionDate" + 5 * Interval '1 Minute')))::Int
FROM
	"Transactions" t

