BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	Date_Trunc('day', t."DateTimeValue" + :Date * Interval '1 Year')
FROM
	"LinqDataTypes" t

