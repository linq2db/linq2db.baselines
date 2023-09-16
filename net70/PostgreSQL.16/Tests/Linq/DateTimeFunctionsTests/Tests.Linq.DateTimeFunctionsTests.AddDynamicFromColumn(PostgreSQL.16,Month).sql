BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month'
FROM
	"LinqDataTypes" t

