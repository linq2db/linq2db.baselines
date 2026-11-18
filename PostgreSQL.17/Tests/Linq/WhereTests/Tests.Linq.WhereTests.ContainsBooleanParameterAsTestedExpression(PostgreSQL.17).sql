-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @flag Boolean
SET     @flag = True

SELECT
	t."ID"
FROM
	"LinqDataTypes" t
WHERE
	:flag IN (t."BoolValue")

