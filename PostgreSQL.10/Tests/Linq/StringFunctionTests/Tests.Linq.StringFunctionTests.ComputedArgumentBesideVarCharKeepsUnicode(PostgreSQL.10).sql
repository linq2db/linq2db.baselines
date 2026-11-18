-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'
DECLARE @search Text(1) -- String
SET     @search = 'Ж'

SELECT
	t."Id",
	Replace(t."VarCharColumn", 'A', :suffix),
	Replace(t."VarCharColumn", 'A', :suffix),
	Replace(t."VarCharColumn", :search, '-')
FROM
	"StringTypesTable" t

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTypesTable" t1

