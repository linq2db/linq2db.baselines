BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(dow from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

