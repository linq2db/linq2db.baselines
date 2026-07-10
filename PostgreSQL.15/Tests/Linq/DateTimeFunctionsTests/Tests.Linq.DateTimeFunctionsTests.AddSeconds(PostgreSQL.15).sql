-- PostgreSQL.15 PostgreSQL12

SELECT
	Floor(Extract(second From (t."DateTimeValue" + -35 * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

