-- SapHana.Odbc SapHanaOdbc
DECLARE @suffix NVarChar(1) -- String
SET     @suffix = '-'

SELECT
	"r"."Plain" || "r"."Conv" || Coalesce(?, '')
FROM
	"PlainAndConvertedUnicodeRow" "r"
LIMIT 2

