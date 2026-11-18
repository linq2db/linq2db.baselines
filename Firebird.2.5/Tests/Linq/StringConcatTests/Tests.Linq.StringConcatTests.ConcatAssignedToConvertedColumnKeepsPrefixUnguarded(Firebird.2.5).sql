-- Firebird.2.5 Firebird
DECLARE @p VarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix VarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow" "t1"
SET
	"Conv" = Coalesce(CAST(@p AS VARCHAR(2)), '') || "t1"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(2)), '')

