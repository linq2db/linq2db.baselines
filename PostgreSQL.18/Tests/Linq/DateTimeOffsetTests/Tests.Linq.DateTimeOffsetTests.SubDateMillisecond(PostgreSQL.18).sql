-- PostgreSQL.18 PostgreSQL

SELECT
	(ROUND(EXTRACT(EPOCH FROM ((t."TransactionDate" + 1 * Interval '1 Second')::timestamp - t."TransactionDate"::timestamp)) * 1000))::Float
FROM
	"Transactions" t

