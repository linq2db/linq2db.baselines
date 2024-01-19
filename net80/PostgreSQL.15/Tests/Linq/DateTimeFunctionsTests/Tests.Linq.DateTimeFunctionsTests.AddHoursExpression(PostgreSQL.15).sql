BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 22

SELECT
	Cast(Floor(Extract(hour from (t."DateTimeValue" + :p * Interval '1 Hour'))) as int)
FROM
	"LinqDataTypes" t

