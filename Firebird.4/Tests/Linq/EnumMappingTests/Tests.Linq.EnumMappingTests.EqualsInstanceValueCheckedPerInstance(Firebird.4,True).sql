-- Firebird.4 Firebird4
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Female'

SELECT
	"r"."Id"
FROM
	"ConvertedGenderRow" "r"
WHERE
	"r"."Gender" = @Value

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Gender"
FROM
	"ConvertedGenderRow" "t1"

