-- PostgreSQL.9.2 PostgreSQL
SELECT
	Date_Trunc('day', d."DateTimeValue"::text::TimeStamp)
FROM
	"LinqDataTypes" d
WHERE
	Floor(Extract(day From d."DateTimeValue"::text::TimeStamp))::Int > 0

