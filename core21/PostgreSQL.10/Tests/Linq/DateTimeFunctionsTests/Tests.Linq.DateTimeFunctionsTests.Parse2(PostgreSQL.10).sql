BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as VarChar(11)) || '-02-24 00:00:00') as TimeStamp)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Extract(day from Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as VarChar(11)) || '-02-24 00:00:00') as TimeStamp))) as int) > 0

