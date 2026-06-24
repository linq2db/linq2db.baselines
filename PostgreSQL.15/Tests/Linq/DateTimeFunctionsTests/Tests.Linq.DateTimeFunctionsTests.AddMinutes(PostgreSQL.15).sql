-- PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + -8 * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

