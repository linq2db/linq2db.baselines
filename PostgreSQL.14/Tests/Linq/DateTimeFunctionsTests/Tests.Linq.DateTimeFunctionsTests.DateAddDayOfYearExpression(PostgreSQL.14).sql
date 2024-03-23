BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	Cast((t."DateTimeValue" + :p * Interval '1 Day') as Date)
FROM
	"LinqDataTypes" t

