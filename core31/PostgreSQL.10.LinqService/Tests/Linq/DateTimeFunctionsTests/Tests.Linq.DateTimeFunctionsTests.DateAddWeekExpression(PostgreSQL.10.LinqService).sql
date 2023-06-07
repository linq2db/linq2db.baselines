BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	t."DateTimeValue" + :p * Interval '1 Day' * 7
FROM
	"LinqDataTypes" t

