-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."IntValue"
FROM
	"TestTable5" t
WHERE
	BITAND(t."IntValue", 1) <> 0

