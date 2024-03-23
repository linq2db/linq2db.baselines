BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(second from (t."DateTimeValue" + 41 * Interval '1 Second'))) as int)
FROM
	"LinqDataTypes" t

