BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Year'
FROM
	"LinqDataTypes" t

