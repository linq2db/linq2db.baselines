-- PostgreSQL.15 PostgreSQL
DECLARE @value TimestampTz -- DateTimeOffset
SET     @value = '2020-02-29T20:34:55.1231234+00:00'

SELECT
	t."TransactionId"
FROM
	"Transactions" t
WHERE
	t."TransactionDate" > :value

