-- PostgreSQL.19 PostgreSQL13
DECLARE @Second Integer -- Int32
SET     @Second = -35

SELECT
	Floor(Extract(second From (t."DateTimeValue" + :Second * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

