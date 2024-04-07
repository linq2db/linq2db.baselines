BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(minute from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

