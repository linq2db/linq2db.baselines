-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @flag Boolean
SET     @flag = True

SELECT
	t."ID"
FROM
	"LinqDataTypes" t
WHERE
	:flag IN (t."BoolValue")

