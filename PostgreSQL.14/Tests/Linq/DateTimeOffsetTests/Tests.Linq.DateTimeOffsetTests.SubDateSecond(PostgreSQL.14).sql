-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Extract(epoch From (t."TransactionDate" + 100 * Interval '1 Minute' - t."TransactionDate")) / 1
FROM
	"Transactions" t

