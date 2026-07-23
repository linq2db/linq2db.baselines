-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @flag Int16
SET     @flag = 1

SELECT
	t.ID
FROM
	"LinqDataTypes" t
WHERE
	:flag IN (t."BoolValue")

