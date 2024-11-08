BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360NullInAnchor"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3360NullInAnchor"
(
	"Id"    Integer     NOT NULL,
	"Guid"  Char (36)       NULL,
	"Enum1" VarChar(50)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

WITH "cte" ("Id", "Enum1")
AS
(
	SELECT
		"p"."Id",
		NULL
	FROM
		"Issue3360NullInAnchor" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('THIS_IS_ONE' AS VarChar(50))
	FROM
		"cte" "t1"
			INNER JOIN "Issue3360NullInAnchor" "r" ON "t1"."Id" = "r"."Id" + 100
)
SELECT
	"t2"."Id",
	"t2"."Enum1"
FROM
	"cte" "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360NullInAnchor"

