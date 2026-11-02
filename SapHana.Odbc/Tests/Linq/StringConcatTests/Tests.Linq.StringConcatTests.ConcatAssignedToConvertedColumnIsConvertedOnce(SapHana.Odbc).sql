-- SapHana.Odbc SapHanaOdbc
DECLARE @p NVarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix NVarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow" "t1"
SET
	"Conv" = Coalesce(?, '') || "t1"."Sku" || Coalesce(?, '')

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Conv"
FROM
	"ConvertedTargetRow" "t1"
LIMIT 2

