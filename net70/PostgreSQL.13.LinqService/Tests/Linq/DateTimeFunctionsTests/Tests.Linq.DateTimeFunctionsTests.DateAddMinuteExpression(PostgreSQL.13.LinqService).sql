BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	t."DateTimeValue" + :p * Interval '1 Minute'
FROM
	"LinqDataTypes" t

