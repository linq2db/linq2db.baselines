-- PostgreSQL.13 PostgreSQL
DECLARE @Hour Integer -- Int32
SET     @Hour = 22

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + :Hour * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

