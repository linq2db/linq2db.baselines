-- PostgreSQL.18 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Hour') - t."TransactionDate"))) / 3600.0
FROM
	"Transactions" t

