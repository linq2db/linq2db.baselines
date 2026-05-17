-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

