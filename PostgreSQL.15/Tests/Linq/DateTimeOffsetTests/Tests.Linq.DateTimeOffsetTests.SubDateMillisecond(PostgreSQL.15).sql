-- PostgreSQL.15 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."TransactionDate" + 1 * Interval '1 Second') - t."TransactionDate"))) * 1000.0
FROM
	"Transactions" t

