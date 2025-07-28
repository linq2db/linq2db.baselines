BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100::float8 * Interval '1 Minute')::timestamp - t."TransactionDate"::timestamp)) / 60
FROM
	"Transactions" t

