BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((t."DateTimeValue" + t."SmallIntValue" * Interval '1 Day' * 7) as Date)
FROM
	"LinqDataTypes" t

