BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(hour From (t."TransactionDate" + 22::float8 * Interval '1 Hour')))::Int
FROM
	"Transactions" t

