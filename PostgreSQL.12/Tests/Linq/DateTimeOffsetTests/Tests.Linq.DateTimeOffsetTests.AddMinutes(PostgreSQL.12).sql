-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Extract(minute From (t."TransactionDate" + -8 * Interval '1 Minute')))::Int
FROM
	"Transactions" t

