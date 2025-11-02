-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(minute From (t."TransactionDate" + 5 * Interval '1 Minute')))::Int
FROM
	"Transactions" t

