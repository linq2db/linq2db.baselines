BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(minute from (t."DateTimeValue" + -8 * Interval '1 Minute'))) as int)
FROM
	"LinqDataTypes" t

