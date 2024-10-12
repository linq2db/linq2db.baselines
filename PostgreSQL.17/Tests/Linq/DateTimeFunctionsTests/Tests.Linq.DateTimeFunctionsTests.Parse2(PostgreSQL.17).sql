BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	(Floor(Extract(year From d."DateTimeValue"))::Int || '-02-24 00:00:00')::TimeStamp
FROM
	"LinqDataTypes" d
WHERE
	Floor(Extract(day From (Floor(Extract(year From d."DateTimeValue"))::Int || '-02-24 00:00:00')::TimeStamp))::Int > 0

