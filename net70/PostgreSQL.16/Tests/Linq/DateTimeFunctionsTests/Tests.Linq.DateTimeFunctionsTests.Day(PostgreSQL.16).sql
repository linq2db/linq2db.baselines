BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(day from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

