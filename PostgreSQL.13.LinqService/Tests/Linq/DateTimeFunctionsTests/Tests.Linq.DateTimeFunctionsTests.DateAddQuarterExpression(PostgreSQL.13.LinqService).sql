BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	Date_Trunc('day', t."DateTimeValue" + (:p * Interval '1 Month') * 3)
FROM
	"LinqDataTypes" t

