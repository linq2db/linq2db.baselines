-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	ROUND(EXTRACT(EPOCH FROM ((t."TransactionDate" + 1 * Interval '1 Second')::timestamp - t."TransactionDate"::timestamp)) * 1000)
FROM
	"Transactions" t

