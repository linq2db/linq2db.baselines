BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + :p * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

