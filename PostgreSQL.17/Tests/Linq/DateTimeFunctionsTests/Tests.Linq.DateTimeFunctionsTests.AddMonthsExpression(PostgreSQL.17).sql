BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -2

SELECT
	Date_Trunc('day', t."DateTimeValue" + :p * Interval '1 Month')
FROM
	"LinqDataTypes" t

