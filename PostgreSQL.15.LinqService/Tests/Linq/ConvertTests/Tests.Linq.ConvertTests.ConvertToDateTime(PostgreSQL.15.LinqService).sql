BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(year from p."DateTimeValue")) as int) || '-01-01 00:00:00'
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Extract(day from Cast((Cast(Floor(Extract(year from p."DateTimeValue")) as int) || '-01-01 00:00:00') as TimeStamp))) as int) > 0

