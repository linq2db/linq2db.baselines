BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + :Value * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

