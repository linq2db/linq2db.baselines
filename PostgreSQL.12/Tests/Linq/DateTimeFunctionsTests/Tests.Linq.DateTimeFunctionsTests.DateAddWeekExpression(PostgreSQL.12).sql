BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	Cast((t."DateTimeValue" + :p * Interval '1 Day' * 7) as Date)
FROM
	"LinqDataTypes" t

