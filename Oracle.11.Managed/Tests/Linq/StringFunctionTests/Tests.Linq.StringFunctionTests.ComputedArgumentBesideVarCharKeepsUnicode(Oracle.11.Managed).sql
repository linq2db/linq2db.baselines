-- Oracle.11.Managed Oracle11
DECLARE @suffix Varchar2(3) -- String
SET     @suffix = 'Жук'
DECLARE @search Varchar2(1) -- String
SET     @search = 'Ж'

SELECT
	t."Id",
	Replace(t."VarCharColumn", 'A', :suffix),
	Replace(t."VarCharColumn", 'A', :suffix),
	Replace(t."VarCharColumn", :search, '-')
FROM
	"StringTypesTable" t

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTypesTable" t1

