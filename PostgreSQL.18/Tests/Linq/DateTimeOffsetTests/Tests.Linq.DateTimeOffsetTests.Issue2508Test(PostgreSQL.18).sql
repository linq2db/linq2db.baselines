BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @value TimestampTz -- DateTime
SET     @value = '2020-02-29T20:34:55.1231234+00:00'

SELECT
	t."TransactionId"
FROM
	"Transactions" t
WHERE
	t."TransactionDate" > :value

