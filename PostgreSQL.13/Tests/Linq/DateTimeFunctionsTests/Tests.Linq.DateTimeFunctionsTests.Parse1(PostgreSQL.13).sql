BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', d."DateTimeValue")
FROM
	"LinqDataTypes" d
WHERE
	Floor(Extract(day From d."DateTimeValue"))::Int > 0

