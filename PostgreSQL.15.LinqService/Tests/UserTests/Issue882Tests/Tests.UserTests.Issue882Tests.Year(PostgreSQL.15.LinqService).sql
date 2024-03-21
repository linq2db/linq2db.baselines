BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as decimal) % 7) as Int)
FROM
	"LinqDataTypes" t

