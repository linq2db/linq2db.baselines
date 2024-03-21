BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(second from (t."DateTimeValue" + -35 * Interval '1 Second'))) as int)
FROM
	"LinqDataTypes" t

