BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(hour from t."DateTimeValue")) as int) as text) || ':01:01') as Time)
FROM
	"LinqDataTypes" t

