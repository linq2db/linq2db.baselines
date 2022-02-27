BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Cast(Floor(Extract(day from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

