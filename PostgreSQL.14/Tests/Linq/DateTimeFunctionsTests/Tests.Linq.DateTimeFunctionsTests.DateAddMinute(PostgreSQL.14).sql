BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + 5 * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

