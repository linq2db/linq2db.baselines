BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -35

SELECT
	Cast(Floor(Extract(second from (t."DateTimeValue" + :p * Interval '1 Second'))) as int)
FROM
	"LinqDataTypes" t

