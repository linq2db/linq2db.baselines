BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	Extract(doy from t."DateTimeValue")
FROM
	"LinqDataTypes" t

