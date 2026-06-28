-- PostgreSQL.13 PostgreSQL13

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

