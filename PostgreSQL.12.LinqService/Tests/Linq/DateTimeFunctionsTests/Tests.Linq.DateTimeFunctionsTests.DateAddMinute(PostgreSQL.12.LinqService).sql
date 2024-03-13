BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(minute from (t."DateTimeValue" + 5 * Interval '1 Minute'))) as int)
FROM
	"LinqDataTypes" t

