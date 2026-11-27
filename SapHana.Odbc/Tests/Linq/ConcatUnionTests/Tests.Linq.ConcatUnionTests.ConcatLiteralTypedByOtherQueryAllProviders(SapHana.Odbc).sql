-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."Id",
	"p"."Str"
FROM
	"SetLiteralTypingTable" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str' AS VarChar(5000))
FROM
	"SetLiteralTypingTable" "p_1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."Id",
	CAST('str' AS VarChar(5000))
FROM
	"SetLiteralTypingTable" "p"
UNION ALL
SELECT
	"p_1"."Id",
	"p_1"."Str"
FROM
	"SetLiteralTypingTable" "p_1"

