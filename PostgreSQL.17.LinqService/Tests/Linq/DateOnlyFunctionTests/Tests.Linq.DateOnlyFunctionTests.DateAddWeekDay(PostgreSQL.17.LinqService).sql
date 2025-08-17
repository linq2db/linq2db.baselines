BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + Interval '1 Day'
FROM
	"Transactions" t

