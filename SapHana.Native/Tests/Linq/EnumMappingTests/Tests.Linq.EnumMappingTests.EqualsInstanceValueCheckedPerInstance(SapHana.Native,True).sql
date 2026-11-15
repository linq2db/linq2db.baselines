-- SapHana.Native SapHana
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Female'

SELECT
	"r"."Id"
FROM
	"ConvertedGenderRow" "r"
WHERE
	"r"."Gender" = :"Value"

