BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Minute Integer -- Int32
SET     @Minute = -8

SELECT
	Floor(Extract(minute From (t."DateTimeValue" + :Minute * Interval '1 Minute')))::Int
FROM
	"LinqDataTypes" t

