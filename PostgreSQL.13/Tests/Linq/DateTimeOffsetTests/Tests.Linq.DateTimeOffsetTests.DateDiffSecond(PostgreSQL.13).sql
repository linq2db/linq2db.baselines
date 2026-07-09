-- PostgreSQL.13 PostgreSQL13

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Minute')::timestamp - t."TransactionDate"::timestamp))
FROM
	"Transactions" t

