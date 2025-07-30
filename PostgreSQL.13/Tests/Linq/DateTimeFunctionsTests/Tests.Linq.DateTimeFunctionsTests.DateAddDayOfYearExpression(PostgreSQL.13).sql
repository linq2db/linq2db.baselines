BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 3

SELECT
	Date_Trunc('day', t."DateTimeValue" + :Value * Interval '1 Day')
FROM
	"LinqDataTypes" t

