BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	Cast((t."DateTimeValue" + :p * Interval '1 Day') as Date)
FROM
	"LinqDataTypes" t

