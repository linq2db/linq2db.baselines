BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Minute')::timestamp - t."TransactionDate"::timestamp)) / 60
FROM
	"Transactions" t

