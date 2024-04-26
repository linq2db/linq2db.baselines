BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 22

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + :p * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

