BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Cast(Floor(Extract(second from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

