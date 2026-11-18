-- PostgreSQL.12 PostgreSQL12
SELECT
	Extract(epoch From (t."TransactionDate" + 1 * Interval '1 Second' - t."TransactionDate")) * 1000
FROM
	"Transactions" t

