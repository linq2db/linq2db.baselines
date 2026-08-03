-- PostgreSQL.13 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Minute') - t."TransactionDate"))) / 60.0
FROM
	"Transactions" t

