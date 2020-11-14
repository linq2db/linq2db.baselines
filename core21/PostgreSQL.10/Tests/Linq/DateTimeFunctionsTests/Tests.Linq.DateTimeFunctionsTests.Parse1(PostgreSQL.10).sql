BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	d."DateTimeValue"
FROM
	"LinqDataTypes" d
WHERE
	Cast(Floor(Extract(day from d."DateTimeValue")) as int) > 0

