-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(t."VarCharColumn" || '...++', '.+')
FROM
	"StringTrimTable" t

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

