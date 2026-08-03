-- PostgreSQL.18 PostgreSQL12
SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Minute') - t."TransactionDate"))
FROM
	"Transactions" t

