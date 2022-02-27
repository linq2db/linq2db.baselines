BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast(Floor(Extract(hour from (t."DateTimeValue" + 22 * Interval '1 Hour'))) as int)
FROM
	"LinqDataTypes" t

