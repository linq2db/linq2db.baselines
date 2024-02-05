BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	t."DateTimeValue" + :p * Interval '1 Month'
FROM
	"LinqDataTypes" t

