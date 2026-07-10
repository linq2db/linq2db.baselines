-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	Floor(Extract(minute From (t."TransactionDate" + 5 * Interval '1 Minute')))::Int
FROM
	"Transactions" t

