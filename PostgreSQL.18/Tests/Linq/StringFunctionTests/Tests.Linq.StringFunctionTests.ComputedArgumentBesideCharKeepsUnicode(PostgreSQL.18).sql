-- PostgreSQL.18 PostgreSQL12
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'

SELECT
	t."Id",
	RTRIM(Replace(t."CharColumn", 'A', :suffix)),
	RTRIM(Replace(t."CharColumn", 'A', 'Ж'))
FROM
	"StringTypesTable" t

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTypesTable" t1

