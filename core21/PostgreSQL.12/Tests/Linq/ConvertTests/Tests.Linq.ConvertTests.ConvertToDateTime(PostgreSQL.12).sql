BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(year from p."DateTimeValue")) as int) as VarChar(11)) || '-01-01 00:00:00') as TimeStamp)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Extract(day from Cast((Cast(Cast(Floor(Extract(year from p."DateTimeValue")) as int) as VarChar(11)) || '-01-01 00:00:00') as TimeStamp))) as int) > 0

