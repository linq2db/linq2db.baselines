BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = -1

SELECT
	t."DateTimeValue" + :p1 * Interval '1 Month' * 3
FROM
	"LinqDataTypes" t

