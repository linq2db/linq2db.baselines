BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + t."SmallIntValue" * Interval '1 Year')
FROM
	"LinqDataTypes" t

