-- Firebird.4 Firebird4
DECLARE @value VarChar(1) -- String
SET     @value = '+'

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"BoolStringConversionTable" "r"
WHERE
	"r"."Value" = @value
ORDER BY
	"r"."Id"

