-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(second From (t."DateTimeValue" + 41 * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

