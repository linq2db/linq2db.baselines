BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t.ID,
	t."IntValue"
FROM
	"LinqDataTypes" t
WHERE
	BITAND(t."IntValue", 1) <> 0

