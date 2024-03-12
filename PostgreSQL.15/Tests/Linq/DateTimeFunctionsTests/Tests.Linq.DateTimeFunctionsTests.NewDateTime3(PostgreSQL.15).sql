BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(year from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

