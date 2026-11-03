-- PostgreSQL.9.3 PostgreSQL
DECLARE @suffix Text(60) -- String
SET     @suffix = 'ЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖ'

SELECT
	t."Id",
	Replace(t."VarCharColumn", 'A', :suffix)
FROM
	"StringTypesTable" t

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTypesTable" t1

