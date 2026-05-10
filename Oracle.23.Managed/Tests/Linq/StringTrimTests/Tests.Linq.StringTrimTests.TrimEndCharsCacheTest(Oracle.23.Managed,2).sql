-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

