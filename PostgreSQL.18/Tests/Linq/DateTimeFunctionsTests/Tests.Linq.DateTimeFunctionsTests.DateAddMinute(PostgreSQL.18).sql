-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + 5 * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

