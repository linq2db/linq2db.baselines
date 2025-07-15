BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Minute Integer -- Int32
SET     @Minute = -8

SELECT
	Floor(Extract(minute From (t."TransactionDate" + :Minute * Interval '1 Minute')))::Int
FROM
	"Transactions" t

