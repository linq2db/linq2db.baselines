-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Extract(epoch From (t."TransactionDate" + 100 * Interval '1 Hour' - t."TransactionDate")) / 3600
FROM
	"Transactions" t

