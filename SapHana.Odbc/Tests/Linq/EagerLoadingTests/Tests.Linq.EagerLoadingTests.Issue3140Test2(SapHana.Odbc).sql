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
	"t1"."Id",
	"t1"."ChildId",
	"a_Child"."Id",
	"a_Child"."Name"
FROM
	"Issue3140Parent" "t1"
		LEFT JOIN "Issue3140Child" "a_Child" ON "t1"."ChildId" = "a_Child"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3140Child"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3140Parent"

