BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Extract(doy from t."DateTimeValue")
FROM
	"LinqDataTypes" t

