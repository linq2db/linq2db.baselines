-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	Extract(doy from t."DateTimeValue")
FROM
	"LinqDataTypes" t

