BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Minute Integer -- Int32
SET     @Minute = -8

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + :Minute * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

