-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	RTRIM(Replace(t."NCharColumn", t."VarCharColumn", N'x')),
	RTRIM(Replace(t."CharColumn", t."VarCharColumn", 'x'))
FROM
	"StringTypesTable" t
ORDER BY
	t."Id"

