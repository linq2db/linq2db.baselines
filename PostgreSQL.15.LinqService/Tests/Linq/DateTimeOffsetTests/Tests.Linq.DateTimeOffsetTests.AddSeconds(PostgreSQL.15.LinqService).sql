BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(second From (t."TransactionDate" + -35::float8 * Interval '1 Second')))::Int
FROM
	"Transactions" t

