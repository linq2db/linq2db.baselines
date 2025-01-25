BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + :p * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

