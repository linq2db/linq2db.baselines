BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."TransactionDate" + 3 * Interval '1 Day'
FROM
	"Transactions" t

