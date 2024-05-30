BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 11

SELECT
	Date_Trunc('day', t."DateTimeValue" + :p * Interval '1 Year')
FROM
	"LinqDataTypes" t

