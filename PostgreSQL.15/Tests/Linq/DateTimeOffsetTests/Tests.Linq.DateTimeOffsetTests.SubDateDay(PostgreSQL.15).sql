-- PostgreSQL.15 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."TransactionDate" + 96 * Interval '1 Hour') - t."TransactionDate"))) / 86400.0
FROM
	"Transactions" t

