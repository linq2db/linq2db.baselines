BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Cast(Cast(Floor(Extract(hour from t."DateTimeValue")) as int) as decimal) % 7) as Int)
FROM
	"LinqDataTypes" t

