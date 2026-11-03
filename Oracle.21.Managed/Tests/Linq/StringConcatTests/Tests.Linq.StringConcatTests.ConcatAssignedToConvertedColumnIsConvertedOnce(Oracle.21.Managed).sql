-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(2) -- String
SET     @p = 'x:'
DECLARE @suffix Varchar2(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow" t1
SET
	"Conv" = :p || t1."Sku" || :suffix

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Conv"
FROM
	"ConvertedTargetRow" t1
FETCH NEXT 2 ROWS ONLY

