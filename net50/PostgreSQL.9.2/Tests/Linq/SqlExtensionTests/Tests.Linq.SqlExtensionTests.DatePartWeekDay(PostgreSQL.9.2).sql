BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Extract(dow from t."DateTimeValue") + 1
FROM
	"LinqDataTypes" t

