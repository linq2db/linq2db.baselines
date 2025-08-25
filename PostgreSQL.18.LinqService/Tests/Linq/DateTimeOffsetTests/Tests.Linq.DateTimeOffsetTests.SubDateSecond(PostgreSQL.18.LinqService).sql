BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Minute')::timestamp - t."TransactionDate"::timestamp))
FROM
	"Transactions" t

