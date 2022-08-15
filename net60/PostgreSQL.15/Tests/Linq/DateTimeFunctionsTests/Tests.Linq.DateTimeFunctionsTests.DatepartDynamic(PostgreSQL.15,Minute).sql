BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(minute from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

