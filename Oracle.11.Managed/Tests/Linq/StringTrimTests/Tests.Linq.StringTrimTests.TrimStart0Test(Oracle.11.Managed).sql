-- Oracle.11.Managed Oracle11

SELECT
	LTRIM('   ' || t."VarCharColumn")
FROM
	"StringTrimTable" t

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

