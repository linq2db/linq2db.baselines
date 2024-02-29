BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(year from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

