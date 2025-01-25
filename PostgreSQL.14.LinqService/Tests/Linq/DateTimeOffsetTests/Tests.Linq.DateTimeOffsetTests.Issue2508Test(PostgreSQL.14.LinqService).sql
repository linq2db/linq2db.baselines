BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @value TimestampTz -- DateTime
SET     @value = '2020-02-29T17:14:55.1231234+00:00'

SELECT
	t."TransactionId"
FROM
	"Transactions" t
WHERE
	t."TransactionDate" > :value + 200 * Interval '1 Minute'

