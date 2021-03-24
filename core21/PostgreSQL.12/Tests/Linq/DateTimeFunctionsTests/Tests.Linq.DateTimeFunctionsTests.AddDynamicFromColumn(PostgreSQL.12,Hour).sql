BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + Cast(t."SmallIntValue" as Float) * Interval '1 Hour'
FROM
	"LinqDataTypes" t

