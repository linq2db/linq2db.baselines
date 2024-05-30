BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Extract(dow from t."DateTimeValue") + 1
FROM
	"LinqDataTypes" t

