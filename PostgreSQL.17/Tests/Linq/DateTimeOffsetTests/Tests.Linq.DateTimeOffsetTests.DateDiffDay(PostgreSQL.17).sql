BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 96::float8 * Interval '1 Hour')::timestamp - t."TransactionDate"::timestamp)) / 86400
FROM
	"Transactions" t

