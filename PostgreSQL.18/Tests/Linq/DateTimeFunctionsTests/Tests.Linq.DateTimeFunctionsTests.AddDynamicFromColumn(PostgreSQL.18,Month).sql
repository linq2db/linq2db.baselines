BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month'
FROM
	"LinqDataTypes" t

