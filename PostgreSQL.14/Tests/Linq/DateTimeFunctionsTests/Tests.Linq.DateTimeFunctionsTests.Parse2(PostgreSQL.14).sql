BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Floor(Extract(year from d."DateTimeValue")) as int) || '-02-24 00:00:00') as TimeStamp)
FROM
	"LinqDataTypes" d
WHERE
	Cast(Floor(Extract(day from Cast((Cast(Floor(Extract(year from d."DateTimeValue")) as int) || '-02-24 00:00:00') as TimeStamp))) as int) > 0

