BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 2

SELECT
	Date_Trunc('day', t."DateTimeValue" + :Value * Interval '1 Month')
FROM
	"LinqDataTypes" t

