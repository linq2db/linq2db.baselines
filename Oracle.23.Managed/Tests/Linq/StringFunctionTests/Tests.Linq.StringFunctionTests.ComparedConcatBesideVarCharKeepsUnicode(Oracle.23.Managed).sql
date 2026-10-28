-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @suffix Varchar2(3) -- String
SET     @suffix = 'Жук'

SELECT
	t."Id",
	CASE
		WHEN (t."VarCharColumn" || :suffix) > t."NVarCharColumn" OR t."NVarCharColumn" IS NULL
			THEN 1
		WHEN (t."VarCharColumn" || :suffix) = t."NVarCharColumn"
			THEN 0
		ELSE -1
	END,
	RTRIM(t."VarCharColumn" || :suffix)
FROM
	"StringTypesTable" t

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTypesTable" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @suffix Varchar2(3) -- String
SET     @suffix = 'Жук'

SELECT
	t."Id"
FROM
	"StringTypesTable" t
WHERE
	(t."VarCharColumn" || :suffix) NOT LIKE '%?%'
ORDER BY
	t."Id"

