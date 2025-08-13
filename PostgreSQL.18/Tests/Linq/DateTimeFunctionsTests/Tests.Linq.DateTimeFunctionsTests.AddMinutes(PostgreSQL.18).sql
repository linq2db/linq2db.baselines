BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + -8 * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

