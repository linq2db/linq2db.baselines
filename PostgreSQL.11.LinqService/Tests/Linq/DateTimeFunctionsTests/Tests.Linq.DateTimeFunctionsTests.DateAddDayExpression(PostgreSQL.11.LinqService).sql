BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	t."DateTimeValue" + :p * Interval '1 Day'
FROM
	"LinqDataTypes" t

