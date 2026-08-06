-- PostgreSQL.18 PostgreSQL12
DECLARE @flag Boolean
SET     @flag = True

SELECT
	t."ID"
FROM
	"LinqDataTypes" t
WHERE
	:flag IN (t."BoolValue")

