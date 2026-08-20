-- PostgreSQL.12 PostgreSQL12
SELECT
	Extract(epoch From (t."TransactionDate" + 100 * Interval '1 Minute' - t."TransactionDate"))
FROM
	"Transactions" t

