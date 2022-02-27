BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Cast(Floor(Extract(dow from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

