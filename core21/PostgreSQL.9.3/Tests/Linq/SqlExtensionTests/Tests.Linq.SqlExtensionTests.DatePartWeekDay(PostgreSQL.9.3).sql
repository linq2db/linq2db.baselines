BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Extract(dow from t."DateTimeValue") + 1
FROM
	"LinqDataTypes" t

