BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + 22 * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

