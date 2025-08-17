BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	ROUND(EXTRACT(EPOCH FROM ((t."TransactionDate" + 1 * Interval '1 Second')::timestamp - t."TransactionDate"::timestamp)) * 1000)
FROM
	"Transactions" t

