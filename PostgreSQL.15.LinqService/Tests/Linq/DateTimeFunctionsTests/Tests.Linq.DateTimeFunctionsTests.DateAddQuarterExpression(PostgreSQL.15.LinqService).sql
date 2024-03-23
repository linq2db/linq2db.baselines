BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	Cast((t."DateTimeValue" + :p * Interval '1 Month' * 3) as Date)
FROM
	"LinqDataTypes" t

