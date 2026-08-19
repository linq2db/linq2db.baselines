-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Extract(hour From (t."DateTimeValue" + Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

