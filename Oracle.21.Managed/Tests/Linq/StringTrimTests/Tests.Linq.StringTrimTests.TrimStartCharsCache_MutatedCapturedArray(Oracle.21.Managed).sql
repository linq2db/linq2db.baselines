-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	LTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

