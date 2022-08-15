BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Hour'
FROM
	"LinqDataTypes" t

