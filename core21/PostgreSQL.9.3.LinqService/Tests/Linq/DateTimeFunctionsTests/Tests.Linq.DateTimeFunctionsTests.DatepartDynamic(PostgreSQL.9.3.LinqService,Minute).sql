BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Cast(Floor(Extract(minute from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

