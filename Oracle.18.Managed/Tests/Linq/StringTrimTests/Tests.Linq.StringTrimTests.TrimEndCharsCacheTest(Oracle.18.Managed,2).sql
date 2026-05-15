-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

