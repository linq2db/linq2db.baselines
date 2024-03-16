BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	Cast((t."DateTimeValue" + :p * Interval '1 Day') as Date)
FROM
	"LinqDataTypes" t

