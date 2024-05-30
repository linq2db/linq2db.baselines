BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

