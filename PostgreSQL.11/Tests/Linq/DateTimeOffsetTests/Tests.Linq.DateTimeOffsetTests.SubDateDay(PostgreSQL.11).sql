-- PostgreSQL.11 PostgreSQL
SELECT
	Extract(epoch From (t."TransactionDate" + 96 * Interval '1 Hour' - t."TransactionDate")) / 86400
FROM
	"Transactions" t

