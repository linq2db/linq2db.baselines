BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."TransactionDate" + (-Interval '1 Month') * 3
FROM
	"Transactions" t

