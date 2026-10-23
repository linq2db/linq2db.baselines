-- Firebird.3 Firebird3
DECLARE @value VarChar(1) -- String
SET     @value = '+'

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"Issue2362Table" "r"
WHERE
	"r"."Value" = @value
ORDER BY
	"r"."Id"

