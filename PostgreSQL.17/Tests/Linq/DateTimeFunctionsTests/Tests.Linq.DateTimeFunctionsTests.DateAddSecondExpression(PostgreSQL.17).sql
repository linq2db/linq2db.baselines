BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 41

SELECT
	Floor(Extract(second From (t."DateTimeValue" + :p * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

