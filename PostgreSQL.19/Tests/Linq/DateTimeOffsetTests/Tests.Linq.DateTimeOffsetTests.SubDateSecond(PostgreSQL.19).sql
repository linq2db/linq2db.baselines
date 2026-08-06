-- PostgreSQL.19 PostgreSQL12
SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Minute')::timestamp - t."TransactionDate"::timestamp))::Float
FROM
	"Transactions" t

