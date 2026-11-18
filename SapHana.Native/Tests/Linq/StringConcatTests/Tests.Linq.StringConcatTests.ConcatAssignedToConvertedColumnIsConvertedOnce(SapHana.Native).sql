-- SapHana.Native SapHana
DECLARE @p NVarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix NVarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow" "t1"
SET
	"Conv" = Coalesce(:"p", '') || "t1"."Sku" || Coalesce(:"suffix", '')

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Conv"
FROM
	"ConvertedTargetRow" "t1"
LIMIT 2

