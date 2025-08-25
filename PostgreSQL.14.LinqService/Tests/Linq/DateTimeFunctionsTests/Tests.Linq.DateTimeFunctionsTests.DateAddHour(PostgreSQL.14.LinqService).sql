BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

