BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Cast(Floor(Extract(year from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

