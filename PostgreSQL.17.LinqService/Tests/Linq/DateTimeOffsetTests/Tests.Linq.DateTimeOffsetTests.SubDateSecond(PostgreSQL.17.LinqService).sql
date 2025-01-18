BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Minute')::timestamp - t."TransactionDate"::timestamp))
FROM
	"Transactions" t

