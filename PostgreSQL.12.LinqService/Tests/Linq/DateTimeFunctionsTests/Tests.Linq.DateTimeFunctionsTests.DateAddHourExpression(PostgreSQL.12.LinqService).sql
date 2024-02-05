BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	Cast(Floor(Extract(hour from (t."DateTimeValue" + :p * Interval '1 Hour'))) as int)
FROM
	"LinqDataTypes" t

