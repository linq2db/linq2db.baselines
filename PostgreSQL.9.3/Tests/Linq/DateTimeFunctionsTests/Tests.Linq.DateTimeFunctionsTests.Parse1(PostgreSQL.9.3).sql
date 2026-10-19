-- PostgreSQL.9.3 PostgreSQL
SELECT
	Date_Trunc('day', d."DateTimeValue"::text::TimeStamp)
FROM
	"LinqDataTypes" d
WHERE
	Floor(Extract(day From d."DateTimeValue"::text::TimeStamp))::Int > 0

