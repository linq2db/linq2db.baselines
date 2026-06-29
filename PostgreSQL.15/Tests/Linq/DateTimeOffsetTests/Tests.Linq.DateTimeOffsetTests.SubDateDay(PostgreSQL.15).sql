-- PostgreSQL.15 PostgreSQL13

SELECT
	(EXTRACT(EPOCH FROM ((t."TransactionDate" + 96 * Interval '1 Hour')::timestamp - t."TransactionDate"::timestamp)) / 86400)::Float
FROM
	"Transactions" t

