BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	Extract(dow from t."DateTimeValue") + 1
FROM
	"LinqDataTypes" t

