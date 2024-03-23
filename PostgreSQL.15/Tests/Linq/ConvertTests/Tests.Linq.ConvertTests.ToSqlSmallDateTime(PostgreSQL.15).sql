BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast((Cast(Floor(Extract(year from t."DateTimeValue")) as int) || '-01-01 00:20:00') as TimeStamp)
FROM
	"LinqDataTypes" t

