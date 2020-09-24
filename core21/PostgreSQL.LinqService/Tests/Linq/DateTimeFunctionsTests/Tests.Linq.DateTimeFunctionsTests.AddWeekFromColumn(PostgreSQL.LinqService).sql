BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Day' * 7
FROM
	"LinqDataTypes" t

