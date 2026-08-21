-- PostgreSQL.11 PostgreSQL
SELECT
	Extract(epoch From (t."TransactionDate" + 100 * Interval '1 Minute' - t."TransactionDate")) / 60
FROM
	"Transactions" t

