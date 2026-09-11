-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Extract(epoch From (t."TransactionDate" + 100 * Interval '1 Hour' - t."TransactionDate")) / 3600
FROM
	"Transactions" t

