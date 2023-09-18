BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 41

SELECT
	t."DateTimeValue" + :p * Interval '1 Second'
FROM
	"LinqDataTypes" t

