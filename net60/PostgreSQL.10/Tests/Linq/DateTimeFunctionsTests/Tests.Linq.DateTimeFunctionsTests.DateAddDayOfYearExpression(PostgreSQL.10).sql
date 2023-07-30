BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	t."DateTimeValue" + :p * Interval '1 Day'
FROM
	"LinqDataTypes" t

