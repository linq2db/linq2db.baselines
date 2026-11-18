-- SapHana.Native SapHana
DECLARE @p NVarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix NVarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow" "t1"
SET
	"Conv" = Coalesce(:"p", '') || "t1"."Sku" || Coalesce(:"suffix", '')

