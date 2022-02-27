BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Cast(Floor(Extract(month from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

