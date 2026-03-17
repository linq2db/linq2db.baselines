-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(hour From (t."TransactionDate" + Interval '1 Hour')))::Int
FROM
	"Transactions" t

