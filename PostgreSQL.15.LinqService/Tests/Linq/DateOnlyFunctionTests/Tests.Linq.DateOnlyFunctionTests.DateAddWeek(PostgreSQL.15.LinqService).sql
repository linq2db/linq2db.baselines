BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + (-Interval '1 Day') * 7
FROM
	"Transactions" t

