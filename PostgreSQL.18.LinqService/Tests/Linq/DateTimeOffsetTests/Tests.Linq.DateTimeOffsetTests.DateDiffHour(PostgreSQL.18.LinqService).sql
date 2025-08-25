BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Hour')::timestamp - t."TransactionDate"::timestamp)) / 3600
FROM
	"Transactions" t

