-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."TransactionDate" + (-Interval '1 Month') * 3
FROM
	"Transactions" t

