BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((Cast(Floor(Extract(year from t."DateTimeValue")) as int) || '-01-01') as Date)
FROM
	"LinqDataTypes" t

