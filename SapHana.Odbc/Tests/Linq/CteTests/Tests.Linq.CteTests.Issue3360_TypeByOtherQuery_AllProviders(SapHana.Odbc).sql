BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3360Table"
(
	"Id"  Integer       NOT NULL,
	"Str" VarChar(5000)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

WITH "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		"p"."Str"
	FROM
		"Issue3360Table" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('Str' AS VarChar(5000))
	FROM
		"cte" "t1",
		"Issue3360Table" "r"
	WHERE
		"t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360Table"

