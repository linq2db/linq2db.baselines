BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 96 * Interval '1 Hour')::timestamp - t."TransactionDate"::timestamp)) / 86400
FROM
	"Transactions" t

