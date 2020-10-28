BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(year from p."DateTimeValue")) as int) as VarChar(11)) || '-10-1 20:35:44') as TimeStamp)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Extract(month from Cast((Cast(Cast(Floor(Extract(year from p."DateTimeValue")) as int) as VarChar(11)) || '-10-1 20:35:44') as TimeStamp))) as int) = 10

