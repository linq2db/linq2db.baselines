BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3140Parent"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3140Parent"
(
	"Id"      Integer NOT NULL,
	"ChildId" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3140Child"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3140Child"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Id",
	"a_Child"."Id",
	"a_Child"."Name"
FROM
	"Issue3140Parent" "p"
		LEFT JOIN "Issue3140Child" "a_Child" ON "p"."ChildId" = "a_Child"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3140Child"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3140Parent"

