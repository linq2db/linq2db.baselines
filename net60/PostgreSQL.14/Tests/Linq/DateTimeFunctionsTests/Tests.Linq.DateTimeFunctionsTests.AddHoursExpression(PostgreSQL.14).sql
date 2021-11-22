BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 22

SELECT
	Cast(Floor(Extract(hour from (t."DateTimeValue" + :p_1 * Interval '1 Hour'))) as int)
FROM
	"LinqDataTypes" t

