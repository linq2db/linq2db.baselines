-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(2) -- String
SET     @p = 'x:'
DECLARE @suffix Varchar2(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow" t1
SET
	"Conv" = :p || t1."Sku" || :suffix

