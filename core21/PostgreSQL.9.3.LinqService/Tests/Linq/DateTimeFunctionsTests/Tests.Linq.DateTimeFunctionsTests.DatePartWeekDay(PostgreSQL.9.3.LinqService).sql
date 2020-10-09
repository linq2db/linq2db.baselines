BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Cast(Floor(Extract(dow from t."DateTimeValue")) as int) + 1
FROM
	"LinqDataTypes" t

