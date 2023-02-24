BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(week from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

