BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	Cast((t."DateTimeValue" + :p * Interval '1 Month') as Date)
FROM
	"LinqDataTypes" t

