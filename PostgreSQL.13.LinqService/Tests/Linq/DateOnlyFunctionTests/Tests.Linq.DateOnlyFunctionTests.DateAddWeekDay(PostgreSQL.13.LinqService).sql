BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."TransactionDate" + Interval '1 Day'
FROM
	"Transactions" t

