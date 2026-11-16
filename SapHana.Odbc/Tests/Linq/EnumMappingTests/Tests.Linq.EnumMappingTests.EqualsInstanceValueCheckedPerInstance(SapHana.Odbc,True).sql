-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Female'

SELECT
	"r"."Id"
FROM
	"ConvertedGenderRow" "r"
WHERE
	"r"."Gender" = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Gender"
FROM
	"ConvertedGenderRow" "t1"

