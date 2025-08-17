BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + (-Interval '1 Day') * 7
FROM
	"Transactions" t

