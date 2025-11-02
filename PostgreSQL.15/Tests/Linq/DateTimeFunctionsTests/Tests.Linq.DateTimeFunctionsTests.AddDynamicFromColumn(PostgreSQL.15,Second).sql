-- PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Second'
FROM
	"LinqDataTypes" t

