-- Oracle.11.Managed Oracle11

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11

SELECT
	LTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

