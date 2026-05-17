-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."IntValue"
FROM
	"LinqDataTypes" t
WHERE
	BITAND(t."IntValue", 1) <> 0

