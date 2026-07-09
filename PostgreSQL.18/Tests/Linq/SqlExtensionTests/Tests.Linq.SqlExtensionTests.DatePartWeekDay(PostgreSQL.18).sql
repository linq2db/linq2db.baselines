-- PostgreSQL.18 PostgreSQL13

SELECT
	Extract(dow from t."DateTimeValue") + 1
FROM
	"LinqDataTypes" t

