-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 41

SELECT
	Floor(Extract(second From ((t."TransactionDate" AT TIME ZONE 'UTC') + :Value * Interval '1 Second')))::Int
FROM
	"Transactions" t

