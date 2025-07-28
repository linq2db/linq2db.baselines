BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + 22::float8 * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

