-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	Date_Trunc('day', d."DateTimeValue")
FROM
	"LinqDataTypes" d
WHERE
	Floor(Extract(day From d."DateTimeValue"))::Int > 0

