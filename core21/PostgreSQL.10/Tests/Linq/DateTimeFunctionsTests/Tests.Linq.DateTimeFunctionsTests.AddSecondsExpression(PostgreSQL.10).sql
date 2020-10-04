BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = -35

SELECT
	t."DateTimeValue" + :p1 * Interval '1 Second'
FROM
	"LinqDataTypes" t

