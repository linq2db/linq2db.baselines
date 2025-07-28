BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100::float8 * Interval '1 Hour')::timestamp - t."TransactionDate"::timestamp)) / 3600
FROM
	"Transactions" t

