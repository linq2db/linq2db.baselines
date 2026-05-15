-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	LTRIM(t."NVarCharColumn", N'.+')
FROM
	"StringTrimTable" t

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

