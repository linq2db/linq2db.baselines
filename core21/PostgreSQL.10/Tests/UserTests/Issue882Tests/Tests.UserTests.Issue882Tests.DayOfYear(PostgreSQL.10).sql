BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	Cast(Floor(Extract(doy from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

