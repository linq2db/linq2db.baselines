BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(d."DateTimeValue" as Date)
FROM
	"LinqDataTypes" d
WHERE
	Cast(Floor(Extract(day from d."DateTimeValue")) as int) > 0

