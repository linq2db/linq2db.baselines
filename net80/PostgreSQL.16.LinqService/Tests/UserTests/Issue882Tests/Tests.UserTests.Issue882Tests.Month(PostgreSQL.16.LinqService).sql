BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(month from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

