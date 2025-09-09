BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t.ID,
	t."IntValue"
FROM
	"LinqDataTypes" t
WHERE
	BITAND(t."IntValue", 1) <> 0

