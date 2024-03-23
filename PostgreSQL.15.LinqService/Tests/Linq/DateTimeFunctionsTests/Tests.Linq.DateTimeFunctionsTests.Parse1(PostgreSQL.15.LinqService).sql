BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(d."DateTimeValue" as Date)
FROM
	"LinqDataTypes" d
WHERE
	Cast(Floor(Extract(day from d."DateTimeValue")) as int) > 0

