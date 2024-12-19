BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360WithEnum"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3360WithEnum"
(
	"Id"  Integer     NOT NULL,
	"Str" VarChar(50) NOT NULL
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
		"Issue3360WithEnum" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('THIS_IS_TWO' AS VarChar(50))
	FROM
		"cte" "t1"
			INNER JOIN "Issue3360WithEnum" "r" ON "t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360WithEnum"

