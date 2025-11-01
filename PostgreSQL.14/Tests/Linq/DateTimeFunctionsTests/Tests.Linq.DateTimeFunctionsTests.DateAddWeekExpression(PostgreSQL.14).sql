-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	Date_Trunc('day', t."DateTimeValue" + (:Value * Interval '1 Day') * 7)
FROM
	"LinqDataTypes" t

