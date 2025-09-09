BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Extract(dow from t."DateTimeValue") + 1
FROM
	"LinqDataTypes" t

