BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(month from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

