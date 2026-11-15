-- Firebird.3 Firebird3
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Female'

SELECT
	"r"."Id"
FROM
	"ConvertedGenderRow" "r"
WHERE
	"r"."Gender" = @Value

