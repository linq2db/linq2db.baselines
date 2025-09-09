BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Extract(dow from t."DateTimeValue") + 1
FROM
	"LinqDataTypes" t

