BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	Cast(Floor(Extract(minute from (t."DateTimeValue" + :p * Interval '1 Minute'))) as int)
FROM
	"LinqDataTypes" t

