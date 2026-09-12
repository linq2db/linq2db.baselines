-- SapHana.Odbc SapHanaOdbc
DECLARE @value VarChar(1) -- AnsiString
SET     @value = '+'

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"Issue2362Table" "r"
WHERE
	"r"."Value" = ?
ORDER BY
	"r"."Id"

