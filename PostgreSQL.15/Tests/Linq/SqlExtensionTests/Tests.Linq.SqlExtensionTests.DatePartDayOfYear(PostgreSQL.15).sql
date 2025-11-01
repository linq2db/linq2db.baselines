-- PostgreSQL.15 PostgreSQL

SELECT
	Extract(doy from t."DateTimeValue")
FROM
	"LinqDataTypes" t

