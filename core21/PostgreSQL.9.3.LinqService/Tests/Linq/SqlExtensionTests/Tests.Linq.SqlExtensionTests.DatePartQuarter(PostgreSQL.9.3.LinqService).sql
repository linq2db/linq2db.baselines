BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Extract(quarter from t."DateTimeValue")
FROM
	"LinqDataTypes" t

