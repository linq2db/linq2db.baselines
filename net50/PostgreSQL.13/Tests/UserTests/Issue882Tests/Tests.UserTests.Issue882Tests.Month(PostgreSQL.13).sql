BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(month from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

