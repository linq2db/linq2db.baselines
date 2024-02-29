BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(week from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

