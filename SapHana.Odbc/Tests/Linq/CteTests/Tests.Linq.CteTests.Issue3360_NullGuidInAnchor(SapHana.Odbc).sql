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

WITH "cte" ("Id", "Guid")
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
		"r"."Guid"
	FROM
		"cte" "t1"
			INNER JOIN "Issue3360NullInAnchor" "r" ON "t1"."Id" = "r"."Id" + 100
)
SELECT
	"t2"."Id",
	"t2"."Guid"
FROM
	"cte" "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360NullInAnchor"

