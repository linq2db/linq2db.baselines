BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + t."SmallIntValue" * Interval '1 Day' * 7) as Date)
FROM
	"LinqDataTypes" t

