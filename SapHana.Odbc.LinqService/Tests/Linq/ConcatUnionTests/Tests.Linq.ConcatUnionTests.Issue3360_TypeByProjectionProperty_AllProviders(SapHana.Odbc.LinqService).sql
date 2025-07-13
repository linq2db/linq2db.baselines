BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Id",
	CAST('str1' AS VarChar(5000))
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str2' AS VarChar(5000))
FROM
	"Issue3360Table" "p_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Id",
	CAST('str2' AS VarChar(5000))
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str1' AS VarChar(5000))
FROM
	"Issue3360Table" "p_1"

