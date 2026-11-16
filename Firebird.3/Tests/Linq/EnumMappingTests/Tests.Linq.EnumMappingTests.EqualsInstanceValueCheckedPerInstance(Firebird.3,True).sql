-- Firebird.3 Firebird3
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Female'

SELECT
	"r"."Id"
FROM
	"ConvertedGenderRow" "r"
WHERE
	"r"."Gender" = @Value

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Gender"
FROM
	"ConvertedGenderRow" "t1"

