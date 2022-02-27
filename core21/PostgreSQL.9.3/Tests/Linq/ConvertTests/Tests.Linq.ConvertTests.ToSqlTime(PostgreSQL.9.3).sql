BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(hour from t."DateTimeValue")) as int) as text) || ':01:01') as Time)
FROM
	"LinqDataTypes" t

