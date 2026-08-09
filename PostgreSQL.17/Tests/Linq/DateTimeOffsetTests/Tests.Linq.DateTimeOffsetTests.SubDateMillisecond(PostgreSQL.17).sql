-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Extract(epoch From (t."TransactionDate" + 1 * Interval '1 Second' - t."TransactionDate")) / 0.001
FROM
	"Transactions" t

