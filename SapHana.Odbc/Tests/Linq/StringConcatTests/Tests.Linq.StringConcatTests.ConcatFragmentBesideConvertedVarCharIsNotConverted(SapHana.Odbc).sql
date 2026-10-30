-- SapHana.Odbc SapHanaOdbc
DECLARE @dash NVarChar(1) -- String
SET     @dash = '-'

SELECT
	"p"."Conv" || '|' || Coalesce(?, '')
FROM
	"ConvertedConcatRow" "p"
LIMIT 2

