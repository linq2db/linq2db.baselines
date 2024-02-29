BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(hour from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

