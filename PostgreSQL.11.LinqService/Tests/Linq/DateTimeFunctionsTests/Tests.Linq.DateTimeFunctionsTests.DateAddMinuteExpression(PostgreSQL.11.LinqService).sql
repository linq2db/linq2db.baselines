BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	Cast(Floor(Extract(minute from (t."DateTimeValue" + :p * Interval '1 Minute'))) as int)
FROM
	"LinqDataTypes" t

