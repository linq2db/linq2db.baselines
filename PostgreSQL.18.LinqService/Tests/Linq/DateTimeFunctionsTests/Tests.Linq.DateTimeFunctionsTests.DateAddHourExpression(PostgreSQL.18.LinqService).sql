BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + :Value * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

