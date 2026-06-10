-- Oracle.11.Managed Oracle11

SELECT
	t.ID,
	t."IntValue"
FROM
	"TestTable5" t
WHERE
	BITAND(t."IntValue", 1) <> 0

