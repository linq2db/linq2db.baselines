-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."TransactionId"
FROM
	"Transactions" t
WHERE
	t."TransactionDate" > '2020-02-29 21:14:55.123123+00:40'::timestamptz

