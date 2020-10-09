BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as VarChar(11)) || '-01-01 00:20:00') as TimeStamp)
FROM
	"LinqDataTypes" t

