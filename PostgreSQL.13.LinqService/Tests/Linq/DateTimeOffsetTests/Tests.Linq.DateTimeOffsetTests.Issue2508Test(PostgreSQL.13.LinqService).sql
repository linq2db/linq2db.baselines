BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @value TimestampTz -- DateTime
SET     @value = '2020-02-29T20:34:55.1231234+00:00'

SELECT
	t."TransactionId"
FROM
	"Transactions" t
WHERE
	t."TransactionDate" > :value

