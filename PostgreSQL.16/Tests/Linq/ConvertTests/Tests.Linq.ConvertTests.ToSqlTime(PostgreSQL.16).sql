BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((Cast(Floor(Extract(hour from t."DateTimeValue")) as int) || ':01:01') as Time)
FROM
	"LinqDataTypes" t

