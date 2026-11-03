-- PostgreSQL.9.5 PostgreSQL
DECLARE @dash Varchar(1) -- String
SET     @dash = '-'

SELECT
	a."Id",
	b."Id"
FROM
	"StringTypesTable" a,
	"StringTypesTable" b
WHERE
	b."VarCharColumn" = RTRIM(Replace(a."CharColumn", '?', :dash)) OR
	b."VarCharColumn" IS NULL AND a."CharColumn" IS NULL

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTypesTable" t1

