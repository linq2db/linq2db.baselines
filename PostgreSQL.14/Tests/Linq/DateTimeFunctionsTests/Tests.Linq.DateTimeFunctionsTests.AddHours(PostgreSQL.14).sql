-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + 22 * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

