-- PostgreSQL.13 PostgreSQL

SELECT
	Extract(doy from t."DateTimeValue")
FROM
	"LinqDataTypes" t

