-- PostgreSQL.13 PostgreSQL13

SELECT
	Floor(Extract(hour From (t."TransactionDate" + Interval '1 Hour')))::Int
FROM
	"Transactions" t

