-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(second From (t."DateTimeValue" + -35 * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

