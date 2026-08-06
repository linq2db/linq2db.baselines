-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	(EXTRACT(EPOCH FROM ((t."TransactionDate" + 96 * Interval '1 Hour')::timestamp - t."TransactionDate"::timestamp)) / 86400)::Float
FROM
	"Transactions" t

