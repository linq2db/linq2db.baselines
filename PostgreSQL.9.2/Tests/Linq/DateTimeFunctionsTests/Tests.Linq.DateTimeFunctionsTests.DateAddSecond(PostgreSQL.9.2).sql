-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(second From (t."DateTimeValue" + 41 * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

