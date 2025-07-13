BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(day From t."TransactionDate"))::Int
FROM
	"Transactions" t

