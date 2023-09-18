BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(doy from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

