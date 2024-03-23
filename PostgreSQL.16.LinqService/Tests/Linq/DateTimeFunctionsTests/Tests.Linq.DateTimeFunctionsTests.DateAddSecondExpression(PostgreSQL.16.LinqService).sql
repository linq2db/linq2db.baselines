BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 41

SELECT
	Cast(Floor(Extract(second from (t."DateTimeValue" + :p * Interval '1 Second'))) as int)
FROM
	"LinqDataTypes" t

