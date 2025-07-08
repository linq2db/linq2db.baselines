BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Second Integer -- Int32
SET     @Second = -35

SELECT
	Floor(Extract(second From (t."DateTimeValue" + :Second * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

