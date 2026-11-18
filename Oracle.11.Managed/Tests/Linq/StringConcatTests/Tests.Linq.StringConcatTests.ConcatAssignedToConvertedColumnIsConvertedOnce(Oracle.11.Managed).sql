-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(2) -- String
SET     @p = 'x:'
DECLARE @suffix Varchar2(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow" t1
SET
	"Conv" = :p || t1."Sku" || :suffix

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Conv"
FROM
	"ConvertedTargetRow" t1
WHERE
	ROWNUM <= 2

