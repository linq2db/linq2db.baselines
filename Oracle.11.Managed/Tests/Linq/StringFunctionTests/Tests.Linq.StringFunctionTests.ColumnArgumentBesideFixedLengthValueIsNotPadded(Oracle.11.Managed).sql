-- Oracle.11.Managed Oracle11
SELECT
	RTRIM(Replace(t."NCharColumn", t."VarCharColumn", N'x')),
	RTRIM(Replace(t."CharColumn", t."VarCharColumn", 'x'))
FROM
	"StringTypesTable" t
ORDER BY
	t."Id"

