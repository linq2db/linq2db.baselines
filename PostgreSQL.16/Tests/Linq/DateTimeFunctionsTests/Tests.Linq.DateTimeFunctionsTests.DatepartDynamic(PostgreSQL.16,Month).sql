BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(month from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

