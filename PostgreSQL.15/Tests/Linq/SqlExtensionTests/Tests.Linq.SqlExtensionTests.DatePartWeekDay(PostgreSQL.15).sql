-- PostgreSQL.15 PostgreSQL12

SELECT
	Extract(dow from t."DateTimeValue") + 1
FROM
	"LinqDataTypes" t

