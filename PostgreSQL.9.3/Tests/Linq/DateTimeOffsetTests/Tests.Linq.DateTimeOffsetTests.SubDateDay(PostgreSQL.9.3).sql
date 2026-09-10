-- PostgreSQL.9.3 PostgreSQL
SELECT
	Extract(epoch From (t."TransactionDate" + 96 * Interval '1 Hour' - t."TransactionDate")) / 86400
FROM
	"Transactions" t

