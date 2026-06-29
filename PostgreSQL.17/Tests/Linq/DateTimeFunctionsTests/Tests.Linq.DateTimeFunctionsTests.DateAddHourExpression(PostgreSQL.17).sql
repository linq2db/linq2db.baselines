-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + :Value * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

