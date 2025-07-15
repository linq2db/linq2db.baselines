BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Id",
	"p"."Str"
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str' AS VarChar(5000))
FROM
	"Issue3360Table" "p_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Id",
	CAST('str' AS VarChar(5000))
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	"p_1"."Str"
FROM
	"Issue3360Table" "p_1"

