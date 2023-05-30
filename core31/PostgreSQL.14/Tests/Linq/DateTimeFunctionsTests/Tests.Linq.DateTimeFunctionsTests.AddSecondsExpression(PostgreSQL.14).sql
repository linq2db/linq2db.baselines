BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -35

SELECT
	t."DateTimeValue" + :p * Interval '1 Second'
FROM
	"LinqDataTypes" t

