-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = -2

SELECT
	Date_Trunc('day', t."DateTimeValue" + :Date * Interval '1 Month')
FROM
	"LinqDataTypes" t

