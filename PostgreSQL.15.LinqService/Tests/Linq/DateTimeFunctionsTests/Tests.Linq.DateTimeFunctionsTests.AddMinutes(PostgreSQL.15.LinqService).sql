BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + -8::float8 * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

