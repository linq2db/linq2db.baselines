BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(hour from (t."DateTimeValue" + 1 * Interval '1 Hour'))) as int)
FROM
	"LinqDataTypes" t

