-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Date_Trunc('day', d."DateTimeValue"::text::TimeStamp)
FROM
	"LinqDataTypes" d
WHERE
	Floor(Extract(day From d."DateTimeValue"::text::TimeStamp))::Int > 0

