-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @dash Varchar2(1) -- String
SET     @dash = '-'

SELECT
	a."Id",
	b."Id"
FROM
	"StringTypesTable" a,
	"StringTypesTable" b
WHERE
	b."VarCharColumn" = RTRIM(Replace(a."CharColumn", '?', :dash)) OR
	b."VarCharColumn" IS NULL AND RTRIM(Replace(a."CharColumn", '?', :dash)) IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTypesTable" t1

