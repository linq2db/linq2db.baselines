BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as text) || '-01-01') as Date)
FROM
	"LinqDataTypes" t

