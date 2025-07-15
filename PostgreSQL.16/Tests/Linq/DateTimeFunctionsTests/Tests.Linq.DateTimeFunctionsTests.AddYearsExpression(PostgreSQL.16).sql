BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	Date_Trunc('day', t."DateTimeValue" + :Date * Interval '1 Year')
FROM
	"LinqDataTypes" t

