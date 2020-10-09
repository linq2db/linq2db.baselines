BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Cast(Floor(Extract(week from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

