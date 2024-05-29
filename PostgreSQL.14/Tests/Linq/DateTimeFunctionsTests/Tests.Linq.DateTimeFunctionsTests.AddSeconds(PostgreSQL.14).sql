BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(second From (t."DateTimeValue" + -35 * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

