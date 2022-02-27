BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as text) || '-01-01 00:20:00') as TimeStamp)
FROM
	"LinqDataTypes" t

