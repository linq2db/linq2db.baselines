BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	d."DateTimeValue"
FROM
	"LinqDataTypes" d
WHERE
	Cast(Floor(Extract(day from d."DateTimeValue")) as int) > 0

