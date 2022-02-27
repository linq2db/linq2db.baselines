BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(year from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

