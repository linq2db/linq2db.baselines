-- Oracle.11.Managed Oracle11
DECLARE @flag Int16
SET     @flag = 1

SELECT
	t.ID
FROM
	"LinqDataTypes" t
WHERE
	:flag IN (t."BoolValue")

