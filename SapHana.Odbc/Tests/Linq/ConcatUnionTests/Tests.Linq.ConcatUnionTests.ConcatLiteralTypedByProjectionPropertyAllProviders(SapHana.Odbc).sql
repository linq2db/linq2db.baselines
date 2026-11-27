-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."Id",
	CAST('str1' AS VarChar(5000))
FROM
	"SetLiteralTypingTable" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str2' AS VarChar(5000))
FROM
	"SetLiteralTypingTable" "p_1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."Id",
	CAST('str2' AS VarChar(5000))
FROM
	"SetLiteralTypingTable" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str1' AS VarChar(5000))
FROM
	"SetLiteralTypingTable" "p_1"

