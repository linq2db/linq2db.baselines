BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', d."DateTimeValue")
FROM
	"LinqDataTypes" d
WHERE
	Floor(Extract(day From d."DateTimeValue"))::Int > 0

