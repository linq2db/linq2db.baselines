BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(week From t."TransactionDate"))::Int
FROM
	"Transactions" t

